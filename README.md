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



## Bootstrap v4 - alpha

_todo_ Define what gem was used and how to do upgrades


## Public Page

One controller Greetings with an index action.

## Testing Framework RSpec + Guard

Using RSpec for Testing and Guard

## Database PostgreSQL

This starter app uses PostgreSQL adapter.
To setup: 
create a .env file in your root folder.
Add inside that .env file the following
```
export RAILS_DATABASE_NAME=<name of the database>
export RAILS_TEST_DATABASE_NAME=<name of testing database>
export RAILS_DATABASE_USERNAME=<username for accessing database>
export RAILS_DATABASE_PASSWORD=<password for accessing database>
```