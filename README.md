# Redactor editor for RefineryCMS

This gem replaces Refinery's default WYMeditor with Redactor, a super clean and simple HTML5-based text editor. It's compatible with RefineryCMS 3.0 and above (previous to this, WYMeditor was much more tightly bound to the core project and difficult to replace).

### Important note!

Before installing this gem, please check that the use will be in compliance with [Redactor's License](http://imperavi.com/redactor/license/). In short, use of Redactor for anything other than non-commerical personal works requires the payment of a license fee to the authors of Redactor, [Imperavi LLC](http://imperavi.com/). This gem includes a recent version of Redactor and is updated peridically (if you wish to help with this, pull requests are welcome).

### Requirements

An application set up with RefineryCMS 3 or higher. For help getting that set up, check out Refinery's [Getting Started guide](refinerycms.com/guides/getting-started/).

### Installation

Just add this gem to your application's `Gemfile`, replacing the `refinerycms-wymeditor` gem that was inserted by the setup process for RefineryCMS itself:

``` diff
- gem 'refinerycms-wymeditor'
+ gem 'refinerycms-redactor'
```

...and run `bundle install`. There are no other requirements, as this extension does not contain any special migrations or seeds.

### Configuring

You may override the config settings in config.js.

> TODO: Instructions coming soon

### License

This gem is published under an MIT license. See MIT-LICENSE for details
