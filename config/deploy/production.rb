set :branch, ENV.fetch("CAPISTRANO_BRANCH", "master")
set :fiftyfive_sidekiq_concurrency, 1

server "breakthroughmenscommunity.org",
       :user => "deployer",
       :roles => %w(app backup cron db redis sidekiq web)
