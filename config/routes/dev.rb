if Rails.env.development?
  namespace :dev do
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
