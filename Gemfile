source 'https://rubygems.org'

gem 'rails', '4.1.5'

# This needs to be with require false as it is
# loaded after loading the test library to
# ensure correct loading order
gem 'mocha', '~> 0.14', require: false

gem 'rack-cache', '~> 1.2'
gem 'jquery-rails', '~> 3.1.0'

# require: false so bcrypt is loaded only when has_secure_password is used.
# This is to avoid ActiveModel (and by extension the entire framework)
# being dependent on a binary library.
gem 'bcrypt', '~> 3.1.7', require: false

# This needs to be with require false to avoid
# it being automatically loaded by sprockets
gem 'uglifier', '>= 1.3.0', require: false

# Assets
gem 'sass-rails', '~> 4.0.0.rc1'
gem 'yui-compressor'

group :doc do
  gem 'sdoc', '~> 0.4.0'
  gem 'redcarpet', '~> 2.2.2', platforms: :ruby
  gem 'w3c_validators'
  gem 'kindlerb'
end

#app
gem 'wepay'
gem 'money-rails'
gem 'paranoia', '~> 2.0'

# server
gem 'unicorn'

# AS
gem 'dalli', '>= 2.2.1'

# Add your own local bundler stuff
local_gemfile = File.dirname(__FILE__) + "/.Gemfile"
instance_eval File.read local_gemfile if File.exist? local_gemfile

group :test do
  # FIX: Our test suite isn't ready to run in random order yet
  gem 'minitest', '< 5.3.4'

  platforms :mri_19 do
    gem 'ruby-prof', '~> 0.11.2'
  end

  # platforms :mri_19, :mri_20 do
  #   gem 'debugger'
  # end

  gem 'benchmark-ips'
end

platforms :ruby do
  gem 'nokogiri', '>= 1.4.5'

  # Needed for compiling the ActionDispatch::Journey parser
  gem 'racc', '>=1.4.6', require: false
  group :db do
    gem 'pg'
  end
end