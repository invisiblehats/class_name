# class_name 

---


[![IHV](https://storage.googleapis.com/li-assets/badges/badge.svg?v=1.0)](https://badge.fury.io/rb/class_name)
[![Gem Version](https://badge.fury.io/rb/class_name.svg)](https://badge.fury.io/rb/class_name)
[![Build Status](https://travis-ci.com/invisiblehats/class_name.svg?branch=master)](https://travis-ci.com/invisiblehats/class_name)
[![Code Climate](https://codeclimate.com/github/invisiblehats/class_name.svg)](https://codeclimate.com/github/invisiblehats/class_name)
[![Inline docs](http://inch-ci.org/github/invisiblehats/class_name.svg)](http://inch-ci.org/github/invisiblehats/class_name)
[![Security](https://hakiri.io/github/invisiblehats/class_name/master.svg)](https://hakiri.io/github/invisiblehats/class_name/master)

---

A ruby implementation of Node's [classnames](https://www.npmjs.com/package/classnames) package.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'class_name', github: 'invisiblehats/class_name'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install class_name

## Usage

You can use this in any ruby environment. Test it out in your terminal:

```ruby
require 'class_name'

include ClassName

class_name("ui card", { fluid: false, flexbox: true, float: false }, ["blue", "inverted"])
# "ui card flexbox blue inverted"
```

### Rails

Add this line to `ApplicationHelper`:
```ruby
module ApplicationHelper
  include ClassName
end
```

Then use it in your view templates:
```html
<div class="<%= class_name('ui card', fluid: false, { blue: true }) %>"></div>
```

Would generate:
```html
<div class="ui card blue"></div>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/invisiblehats/class_name. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ClassName project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/class_name/blob/master/CODE_OF_CONDUCT.md).

## Development team
### People
- [Myk Klemme - @mklemme](https://github.com/mklemme) Lead developer and maintainer for this project.
### Partners
- [Invisible Hat Ventures - @invisiblehats](https://github.com/invisiblehats) A private startup development agency
- [Love.irish - @love-irish](https://github.com/love-irish) A lifestyle-as-a-service for the Irish language
- [League of Celts - @league-of-celts](https://github.com/league-of-celts) A non-profit focused on promoting Celtic languages
