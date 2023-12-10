Rails.application.config.generators do |g|
  g.orm :active_record
  g.helper false
  g.test_framework :rspec,
    fixtures: false,
    view_specs: false,
    helper_specs: false,
    routing_specs: false
end
