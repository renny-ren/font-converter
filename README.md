# FontForge

This is a Ruby wrapper for [FontForge](https://fontforge.github.io/en-US/documentation/), which can be used to parse font file and extract the font name, or convert fonts into different formats(.ttf, .otf, .woff, etc.)

[![Build Status](https://travis-ci.org/renny-ren/fontforge-ruby.svg?branch=master)](https://travis-ci.org/renny-ren/fontforge-ruby)

## Installation

`$ gem install fontforge-ruby`

In Rails, add it to your Gemfile:

`gem 'fontforge-ruby'`

then run `$ bundle install`

## Usage

You should first have fontforge installed on your machine:

`brew install fontforge`

#### parse

```ruby
FontForge.parse('/my_path/test.woff')  # => { font_name: 'xxx', full_name: 'xxx', family_name: 'xxx' }
```

#### convert

```ruby
# FontForge.convert(path, new_path)
FontForge.convert('/my_path/test.ttf', '/my_path/test.woff') # convert .ttf format to .woff
```


## Contributing

1. Fork it (https://github.com/renny-ren/fontforge-ruby)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
