# naive_mather

Calculates the result of a basic math equation stored
in a String.
```
NaiveMather.calculate("3 + 4 * (3 + 4)")
 => 31
```
Only handles +, -, *, /, and parentheses.

[![Docs](https://img.shields.io/badge/docs-available-brightgreen.svg)](<LINK-TO-YOUR-DOCUMENTATION>)

## Installation

1. Add the dependency to your `shard.yml`:
```yaml
dependencies:
  naive_mather:
    github: blazerw/naive_mather
```
2. Run `shards install`

## Usage

```crystal
require "naive_mather"
```

Just pass your equation String to NaiveMather.calculate()

## Development

Follow Crystal's guidelines: https://crystal-lang.org/reference/guides/writing_shards.html and realize that I'm using [Spec2](https://github.com/waterlink/spec2.cr) for testing, specifically this [fork](https://github.com/ThunderKey/spec2.cr)

## Contributing

1. Fork it (<https://github.com/blazerw/naive_mather/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Randy Wilson](https://github.com/blazerw) - creator and maintainer
  [Lukasz Wrobel](https://lukaszwrobel.pl/) - Ruby version, the "real" creator
