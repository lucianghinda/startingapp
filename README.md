NOTE: This repository is not maintained anymore. There are better starting kits and more up-to-date
---
# README

# PURPOSE

The purpose is to have a starting template in Ruby on Rails with the following requirements:

1. Ruby on Rails v5
2. Bootstrap v4 - alpha
3. Bootstrap Theme - one theme from [Bootswatch](https://github.com/thomaspark/bootswatch)
3. Database: PostgreSQL
4. Testing framework: RSpec + Guard
5. Capistrano Template for deployment
6. Devise Secured
7. Public Page
8. Welcome Page (after login)


## How to setup the StartingApp

1. Bundle install
2. Create a .env file inside the StartingApp root with the following content: 
```
export RAILS_DATABASE_NAME=<name of the database>
export RAILS_TEST_DATABASE_NAME=<name of testing database>
export RAILS_DATABASE_USERNAME=<username for accessing database>
export RAILS_DATABASE_PASSWORD=<password for accessing database>
```
3. Copy config/mailer_config.yml.sample to config/mailer_config.yml. And write your own credential in it. 
4. rails db:create
5. rails db:migrate
6. bundle exec rspec spec/acceptance/*
7. rails s 

## How to use it

During your development you can use Guard to automatically execute written tests. 

For this just execute the 'guard' command in your startingapp root path:

```
startingapp > guard
```


## Bootstrap v4 - alpha

_todo_ Define what gem was used and how to do upgrades

## Public Page

One controller Greetings with an index action.

## Testing Framework RSpec + Guard

Using RSpec for Testing and Guard.

In this StartingApp there are included two Acceptance testing:
- One to check if the Greetings page works
- One to check if the Welcome page works after login

## Database PostgreSQL

This StartePpp uses PostgreSQL adapter.
