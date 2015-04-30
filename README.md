# Redactor editor for RefineryCMS

This gem replaces Refinery's default WYMeditor with Redactor, a super clean and simple HTML5-based text editor. It's compatible with RefineryCMS 3.0 and above (previous to this, WYMeditor was much more tightly bound to the core project and difficult to replace).

![Screenshot of Refinery Redactor in action!](https://raw.githubusercontent.com/rabid/refinerycms-redactor/master/screenshot.png)

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

You can then follow the usual process for adding a Refinery extension, that is:

* Run `bundle install`
* Run the extension generator:  `rails generate refinery:redactor`


### Configuring

When you run the extension generator, a config file is placed in your application's assets directory (app/assets/javascripts/refinery-redactor/config.js). This file contains tonnes of Redactor settings that you can use to customize the Redactor editor to your needs - for example, you can control which buttons are shown, add or remove plugins, and much more. 

The config that is generated for you is exactly the same as the Redactor system defaults. If you wish to slim down this file, you can remove config settings that you have customized and everything will work exactly the same.

This gem comes bundled with a number of useful plugins which you can enable in your config if you wish:

- `fontsize` (adjust font size)
- `fontcolor` (adjust font colour)
- `fontfamily` (adjust font family)
- `fullscreen` (edit in fullscreen view)
- `clips` (insert pre-written bits of content)

If you don't want to customize the editor, you can remove the `refinery-redactor` directory and the default system will be used.


### Contributing

Contributing is very easy - simply clone the project, and run the tests with the `rake spec` command. If you wish, you can run `rake -T` to see a list of rake tasks that RefineryCMS provides for (re)generating a dummy app for the tests to run against. Once your change has been made and the tests are green, submit a pull request!

### License

This gem is published under an MIT license. See MIT-LICENSE for details
