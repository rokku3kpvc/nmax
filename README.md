# Nmax

This gem checks text from file or STDIN and returns provided N maximum integers.

## Installation

* Clone this repo

* Move to gem folder

```bash
cd nmax
```

* Build gem with  bundler

```bash
gem build nmax.gemspec
```

* Install gem

```bash
gem install nmax-0.1.0.gem
```

## Usage

For CLI

```bash
cat some-file.txt | nmax 5

echo "s2mapl3 t3xt" | nmax 2
```

For Ruby

```ruby
require "nmax"
Nmax.call(2)
%(provide sample t3xt
fr0m STD1N
and hit Ctrl + D for f1n1sh)
# => [3, 1]
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/rokku3kpvc/nmax.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
