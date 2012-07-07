# Gitolite

This module installs Gitolite on a Ubuntu 12.04 Precise Penguin server. This might be compatible with more OS:es but 12.04 is tested.

There are many other modules that installs Gitolite, why did I create a separate?

* I only needed the basic installation and want to manage users and repos via Gitolite
* I did not want to have a lot of dependencies
* I wanted it to be lightweight

## Usage

    class { 'gitolite':
      user => 'name_of_user',
      key  => 'content_of_your_public_key',
    }

Params can be overwritten in class `gitolite::params`.

    class { 'gitolite::params':
      user => 'git',
      home => '/home/git',
    }

## Testing

* Using puppet-rspec and puppet-lint.
* `rake` will test the module.

`tests/init.pp` might have a bit long line due to the public key.

## Contribute

Make sure the tests run and I'll be happy!
