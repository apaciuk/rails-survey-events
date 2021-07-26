# README

Refactored Ruby on Rails Event Modelling/Sourcing Survey engine, (Event/Models) taken/expanded from initial test at

https://github.com/xhostcom/gasfast-user-survey-events.git

Capture and distribute user survey results from JSON payload stored in survey-events db table (in this case Boilers, but can be altered to suit others)

Work in progress, test request in swagger-request.json

* Ruby version

Ruby 2.7.3

Rails 6.0.4

* System dependencies

Node/NPM/Yarn/Ruby/Rails

* Configuration

* Database creation

rails db:create
rails db:migrate

rails s

post to localhost:3000/surveys/create    with json hash included to test.


