=======================================
Installation
=======================================

Git
https://git-scm.com/
git --version

Ruby WITH DEVKIT Ruby+Devkit 2.5.3-1 x64
https://rubyinstaller.org/downloads/
rubyinstaller-devkit-2.x.x-x-x64.exe
to
C:\Ruby2x-x64\
C:\Ruby2x-x64\msys64

>> Run 'ridk install' to setup MSYS2 and development toolchain
>> 1 - MSYS2 base installation
or
cd C:\Ruby2x-x64\
ridk install
>> 1 - MSYS2 base installation

RubyMine
https://www.jetbrains.com/ruby/
Evaluate for 30 days with:
https://temp-mail.org
Add SDK
C:\Ruby2x-x64\bin\ruby.exe

Selenium
https://www.seleniumhq.org/download/
Third Party Drivers

Google Chrome Driver
>>>  chromedriver.exe

Mozilla GeckoDriver
>>>  geckodriver.exe

=======================================
Gemfile
=======================================

To install dependencies from https://rubygems.org/:

gem install bundler
bundle install
bundle init

>>>  Gemfile.lock

=======================================
Project
=======================================

/Gemfile
  source 'http://rubygems.org'
  gem "???"
/drivers/chromedriver.exe
/drivers/geckodriver.exe
/features/feature-name.feature
  Feature: feature-name
    @feature-name-TAG
    Scenario:
      Given
      When
      Then
      And
/features/step-definitions/feature-name_steps.rb
/features/support/env.rb
  require '???'


=======================================
Run
=======================================

To run the framework:
cucumber

To run the framework with tag - 'Feature':
cucumber -t @Login
or
cucumber -t @ContactMe

cucumber -t @logintest
cucumber -t @contactmetest
