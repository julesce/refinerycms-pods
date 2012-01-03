# Refinery CMS Pods

Manageable little side-pods for your [Refinery CMS](http://refinerycms.com) website.

This version of `refinerycms-pods` supports Rails 3.0.x.

## Requirements

Refinery CMS version 1.0.0 or above.

## Install

Open up your ``Gemfile`` and add the following:

    gem 'refinerycms-pods', '1.0', :git => 'git://github.com/julesce/refinerycms-pods.git'

Now, run:

    bundle install

Next, run:

    rails generate refinerycms_pods

Finally migrate your database and you're done.

    rake db:migrate
