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

#Note
after you clone the code,before you run,you need to do following things:
###1 you input the command in your terminal:
cd functional_test/ft
###2
In functional_test/ft/spec/spec_helper.rb number 30 or 31

30th, run this with firefox browser

31th, run this with headless browser

now you can choose which browser you want via comment,and later,we can use environment variable to do it.
###3
In spec/steps/login_steps.rb

5th, we have a method login(arg1,arg2),you need to replace these two arguments with your account and password not the stars.
###4
In spec/features/login.feature
5th, you need replace the stars with your info after you login.

-that means the red region in the image
![image](file:///Users/jyang/Downloads/login_steps.jpg)
