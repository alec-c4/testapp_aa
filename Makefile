.DEFAULT_GOAL := list
list:
	@printf "%-20s %s\n" "Target" "Description"
	@printf "%-20s %s\n" "------" "-----------"
	@make -pqR : 2>/dev/null \
			| awk -v RS= -F: '/^# File/,/^# Finished Make data base/ {if ($$1 !~ "^[#.]") {print $$1}}' \
			| sort \
			| egrep -v -e '^[^[:alnum:]]' -e '^$@$$' \
			| xargs -I _ sh -c 'printf "%-20s " _; make _ -nB | (grep -i "^# Help:" || echo "") | tail -1 | sed "s/^# Help: //g"'
test:
	@# Help: Run rspec tests
	@bundle exec rspec
install:
	@# Help: Install dependencies
	@gem install foreman
	@bundle install
	@bun install
update:
	@# Help: Update dependencies
	@bundle update
	@bun update
audit:
	@# Help: Run audit tasks
	@bundle audit
	@bun audit
clean:
	@# Help: Clear dependencies
	@bundle clean --force
	@rm -rf ./node_modules
run:
	@# Help: Run server
	@bin/dev
lint:
	@# Help: Run linter
	@bundle exec standardrb --fix
	@bundle exec i18n-tasks normalize
	@bundle exec erblint --lint-all --autocorrect
migrate:
	@# Help: Migrate database
	@rails db:migrate
rollback:
	@# Help: Rollback database
	@rails db:rollback
