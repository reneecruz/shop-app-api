ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)

require 'bundler/setup' # Set up gems listed in the Gemfile.
require 'bootsnap/setup' # Speed up boot time by caching expensive operations.

# require 'dotenv'
# Dotenv.load

# require 'dotenv/tasks'

# task mytask: :dotenv do
#     # things that require .env
#     rake db:migrate
#     rake db:seed 
#     rake db:reset
# end