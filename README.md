# NameToGender

Determines the gender of a first name. A ruby port of https://github.com/MarcSalvat/sexmachine

Makes several simplifyiing assumptions:

* Only parses names common in the USA
* Ignores case

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'name_to_gender'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install name_to_gender

## Usage

```ruby
NameToGender.build.gender_of("Fred") # => "M"
```

## License

This code is distributed under the GPLv3. The data file nam_dict.txt is released under the GNU Free Documentation License.
