set :application, "bmc"
set :repo_url, "git@github.com:shillcock/bmc.git"

# Project-specific overrides go here.
# For list of variables that can be customized, see:
# https://github.com/mattbrictson/capistrano-fiftyfive/blob/master/lib/capistrano/tasks/defaults.rake

fetch(:fiftyfive_recipes) << "sidekiq"
fetch(:fiftyfive_aptitude_packages).merge!(
  "redis-server@ppa:rwky/redis" => :redis
)

set :fiftyfive_dotenv_keys, %w(
  rails_secret_key_base
  mandrill_username
  mandrill_api_key
  sidekiq_web_username
  sidekiq_web_password
)
