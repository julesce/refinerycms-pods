# Refinery CMS Pods

Manageable little side-pods for your [Refinery CMS](http://refinerycms.com) website. Depends on the following engines:

+ Portfolios - https://github.com/resolve/refinerycms-portfolio (branch rails-3-1 or whichever the stable 2.0 branch is)
+ Videos - https://github.com/julesce/refinerycms-videos (2.0.x)
+ Inquiries - https://github.com/refinery/refinerycms-inquiries (2.0.x)
+ Simple_form - https://github.com/plataformatec/simple_form (2.0.x)

This version of `refinerycms-pods` supports Rails 3.2.x. and upwards. Designed to work with the asset pipeline.

## Requirements

Refinery CMS version 2.0.x.

## Install

Open up your ``Gemfile`` and add the following:

    gem 'refinerycms-pods', '~> 2.1.0'

Now, run:

    bundle install

Next, run:

    rails generate refinery:pods

Migrate your database:

    rake db:migrate

And hook up the seed data:

    rake db:seed

## Usage

Take a look at the /app/assets/stylesheets/variables.scss file to set a couple of variables.

The following will render any pods assigned to your current @page:

	<%= render :partial => 'refinery/pods/shared/pods' %>