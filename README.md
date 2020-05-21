# Interage::Validators

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'interage-validators', '~> 0.0.1'
```

And then execute:

```bash
bundle install
```

Or install it yourself as:

```bash
gem install interage-validators
```

## Usage

```ruby
# app/models/user.rb
class User < ApplicationRecord
  validates :document, cpf: true
end
```
