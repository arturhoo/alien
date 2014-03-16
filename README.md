# Alien

Interface to Alien Technology ARCA enabled readers, patched to be compatible with Ruby 1.9.3

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'alien'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install alien
```

## Usage

Fetching the taglist

```ruby
require 'alien'

r = Alien::AlienReader.new
r.open('150.164.9.34')
taglist_string = r.taglist
lines = taglist_string.split "\r\n"
tl = Array.new
lines.each { |line| tl.push Alien::AlienTag.new(line) }
puts tl
r.close
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/alien/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
