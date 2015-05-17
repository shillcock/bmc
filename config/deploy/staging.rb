set :branch, ENV.fetch("CAPISTRANO_BRANCH", "development")
set :fiftyfive_sidekiq_concurrency, 1

server "staging.breakthroughmenscommunity.org",
       :user => "deployer",
       :roles => %w(app backup cron db redis sidekiq web)
