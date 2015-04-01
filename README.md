#techether

This website is to be used as a bank of resources used to learn various
technologies and subjects. You are able to signup for a profile where you can
add subjects and various learning material you are using to learn any programming language or framework.
You are able to give a rating to all posted resources and if it was good recommend it to others.
With so many different ways to learn specific technologies this will be a way to filter
out the less useful ones and focus on only the best material.

This application is using Ruby on Rails, JavaScript, jQuery, Bootstrap and Sass.

Database: MySQL for both development and production.

address: http://www.techether.com

Feel free to create an account and play around with the
mechanics of adding and rating resources.

##Setup

For those of you who would like to contribute to the project, here is a nice setup guide for you after
you fork the repository. Thank you PJonestown for putting this together:

`$ touch config/database.yml`
```
common: &common
  adapter: mysql2
  encoding: utf8
  reconnect: true
  pool: 5
  username: root
  password:
  host: '127.0.0.1'

development:
  <<: *common
  database: techether_development

test:
  <<: *common
  database: techether_test
```

Then I commented out all lines referencing devise

`config/routes.rb`
```
# resources :users, only: [:show]
# devise_for :users, :controllers => { registrations: 'registrations' }
```

`app/models/user.rb`
```
#   devise :database_authenticatable, :registerable,
#        :recoverable, :rememberable, :trackable, :validatable
```

`$ rails g devise:install`

Uncomment out the lines

`$ rake db:setup`

This will give an error for a missing devise secret key. Copy and pasted that key into config/initializers/devise.rb

`$ touch config/secrets.yml`
```
development:
  secret_key_base: `**secret key**`
```
