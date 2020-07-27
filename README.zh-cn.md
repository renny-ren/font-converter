# font-converter

这是 [FontForge](https://fontforge.github.io/en-US/documentation/) 的 Ruby 版 SDK。
- 可以用于解析字体文件，得到 font_name, family_name 等
- 可以转换字体格式（如 .ttf, .otf, .woff, .svg 等）

[![Build Status](https://travis-ci.org/renny-ren/font-converter.svg?branch=master)](https://travis-ci.org/renny-ren/font-converter)

## Installation

`$ gem install font-converter`

In Rails, add it to your Gemfile:

`gem 'font-converter'`

then run `$ bundle install`

## Usage

首先你的机器上需要安装好 fontforge

`brew install fontforge`

#### 解析

```ruby
FontForge.parse('/my_path/test.woff')  # => { font_name: 'xxx', full_name: 'xxx', family_name: 'xxx' }
```

#### 转换格式

```ruby
# FontForge.convert(path, new_path)
FontForge.convert('/my_path/test.ttf', '/my_path/test.woff') # convert .ttf format to .woff
```


## Contributing

1. Fork it (https://github.com/renny-ren/font-converter)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
