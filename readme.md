# Refinery CMS Pods

Manageable little side-pods for your [Refinery CMS](http://refinerycms.com) website. Depends on the following engines:

+ Portfolios - https://github.com/resolve/refinerycms-portfolio (branch rails-3-1)
+ Videos - https://github.com/julesce/refinerycms-videos (2.0.0)

This version of `refinerycms-pods` supports Rails 3.0.x.

## Requirements

Refinery CMS version 2.0.x.

## Install

Open up your ``Gemfile`` and add the following:

    gem 'refinerycms-pods', '~> 2.0.0'

Now, run:

    bundle install

Next, run:

    rails generate refinery:pods

Migrate your database:

    rake db:migrate

And hook up the seed data:

    rake db:seed

## Usage

The following will render any pods assigned to your current @page:

  <%= render :partial => 'refinery/pods/shared/pods' %>