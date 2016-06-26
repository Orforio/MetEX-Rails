#!/usr/bin/env bash

cd /vagrant
/home/vagrant/.rbenv/shims/bundle install
/home/vagrant/.rbenv/shims/bundle exec rake db:setup
