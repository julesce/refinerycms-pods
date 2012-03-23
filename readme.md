# Refinery CMS Pods

Manageable little side-pods for your [Refinery CMS](http://refinerycms.com) website. Depends on the following engines:

+ Portfolios - https://github.com/resolve/refinerycms-portfolio (0.9.10)
+ Videos - https://github.com/julesce/refinerycms-videos (1.0)

This version of `refinerycms-pods` supports Rails 3.0.x.

## Requirements

Refinery CMS version 1.0.x.

## Install

Open up your ``Gemfile`` and add the following:

    gem 'refinerycms-pods', '1.0.3'

Now, run:

    bundle install

Next, run:

    rails generate refinerycms_pods

Go through the migrations and seeds that have been copied over to make sure you're happy with the defaults. Finally migrate your database and you're done:

    rake db:migrate

## Usage

Up to you to make use of the pods in your front end, but remember to include the relevant JS/CSS files in your layout:

	<%= stylesheet_include_tag 'colorbox', 'refinerycms-pods' %>
    <%= javascript_include_tag 'jquery-1.5.2.min', 'jquery.bxSlider.min', 'jquery.colorbox-min', 'refinerycms-pods' %>

The following will render any pods assigned to your current @page:

	<%= render :partial => 'refinery/pods/shared/pods' %>