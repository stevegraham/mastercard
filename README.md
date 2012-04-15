# MasterCard

A Ruby library for the MasterCard payments API

## Installation

Add this line to your application's Gemfile:

    gem 'mastercard'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mastercard

## Usage

### Credit Cards

Credit card objects are used to create payments and authorizations. They encapsulate all of the logic around valid credit cards including validation of the number

#### Example
<pre>
MasterCard::CreditCard.new number: '5555555555554444',
	expiry_date: date_object, security_code: '123',
	billing_address: {
		unit:        'Suite 100',
		address:     '42 ELM Avenue',
		city:        'CHICAGO',
		state:       'IL',
		country:     'United States',
		postal_code: '60601'
	}
</pre>

#### Supported Parameters
Parameter|Type|Required
---------|----|---------
number | This is the number of the card used for the transaction (minimum of 12 digits and a maximum of 19 digits).  The format is based on the Electronic Commerce Modelling Language (ECML) and, in particular, must not contain white space or formatting characters. | If expiry_date_year and expiry_date_month were not supplied |



### Payments

To make an atomic payment, i.e. the authorization and capture steps in a single API call, you can use the MasterCard::Payment class

#### Creating a new payment

<pre>
MasterCard::Payment.create amount: 1000, currency: 'USD',


</pre>

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
