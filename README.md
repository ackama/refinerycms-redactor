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

The configuration for the editor is currently fixed, however support for custom configuration (in JS) is planned very soon.
The current configuration is default as per the Redactor documentation, with the exception of the following plugins which are _enabled_:

- `fontsize` (adjust font size)
- `fontcolor` (adjust font colour)
- `fontfamily` (adjust font family)
- `fullscreen` (edit in fullscreen view)
- `clips` (insert pre-written bits of content)

If you need to adjust the config right away, that's fine - just copy the `config.js` file out of this repository (vendor/assets/javascripts/refinery-redactor/config.js) and place it in your project's javascripts assets folder in a subfolder named "refinery-redactor". Rails should automatically prefer this file when loading.

### Contributing

Contributing is very easy - simply clone the project, and run the tests with the `rake spec` command. If you wish, you can run `rake -T` to see a list of rake tasks that RefineryCMS provides for (re)generating a dummy app for the tests to run against. Once your change has been made and the tests are green, submit a pull request!

### License

This gem is published under an MIT license. See MIT-LICENSE for details
