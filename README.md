functional_test
===============

ft_step_by_step

#step1:
###rspec --init

.rspec

spec/spec_helper.rb

#step2:
###rvm --ruby-version use 2.0.0-p353@rspec

.ruby-gemset

.ruby-version

#step3
###vim Gemfile
write the gems that you want to install

#step4
###bundle install
if you don't install bundler, you can run 'gem install bundler' first.
the gems in Gemfile will be installed and generate a file named Gemfile.lock,
we also need commit Gemfile.lock, because once other people download this project
when they run this command, they will get the same version gems with you.