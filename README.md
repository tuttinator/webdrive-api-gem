# Webdrive

_WORK IN PROGRESS_

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'webdrive'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install webdrive

## Usage

TODO: Write usage instructions here

## Notes

XML-RPC is a horrible technology that makes me sad.

The Webdrive XML RPC API is even more painful. The documentation is out of date, and some methods seem cause server-side PHP exceptions.

AFAIK the API doesn't have a method to list the domains already registered by a customer, so you may be responsible yourself for keeping track of which domains are registered.

To access this API you need to have a [reseller account](http://www.webdrive.co.nz/reseller-domain-names/) with Webdrive.

One very useful learning is that in terms of the XML RPC calls, other than `system.listMethods`, you are required to send your RPC code and IP-specific Auth Code (set in the control panel) as the first and second parameters, respectively.

The rather cryptic `Call to undefined method XML_RPC_Response::scalarval()` will alert you that you most probably haven't sent enough arguments. Probably. I mean, without docs it's kind of like being trapped in a dark room, underwater with a stick and those puffer fish that, rather impressively, blow themselves up with spikey bits and you are navigating with this stick, blindfolded, hoping to not bang into anything.

This has been slightly frustrating.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
