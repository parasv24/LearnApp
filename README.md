# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
2.6.6

Rest all the versions can be found out through the gemfile
* Database creation
If you want you can modify the database.yml and use any db of your preference and run all the migrations

## Installation

Clone the repo:

    $ git clone git@github.com:kipusystems/kipu_interchange_service.git

Set up the database:

    $ cd kipu_interchange_service
    $ bundle
    $ rake db:create
    $ rake db:migrate

* Database initialization
You need to create users through console currently and probably you can fill in the value in the below piece and run 
and create the users 

  User.create!(name: <>, role: <>, email: <>, password: <>, password_confirmation: <>)
After the user are created you can sign in and browse the application
