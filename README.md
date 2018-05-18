# Gem::Web

[![Build Status](https://travis-ci.com/bitboxer/gem-web.png?branch=master)](http://travis-ci.com/bitboxer/gem-web) [![Gem Version](https://badge.fury.io/rb/gem-web.png)](http://badge.fury.io/rb/gem-web)

This gem plugin opens the webpage for a gem. As default it tries
to find the GitHub page.

## Installation

    $ gem install gem-web

## Usage

To open the GitHub page of the rails gem enter this:

    $ gem web rails

You could also open the documentation or the webpage that is defined in the gemspec by
adding a parameter to the command.

    Options:
      -g, --github                     Open GitHub page of gem, this searches all urls for a GitHub page. This is the default.
      -c, --sourcecode                 Open sourcecode gem
      -d, --doc                        Open documentation of gem
      -w, --webpage                    Open webpage of gem
      -t, --rubytoolbox                Open the rubytoolbox page for that gem
      -r, --rubygems                   Open the rubygems page for that gem

If the specified page was not found, it opens the rubygems.org page for the gem.

## Thanks

Thanks to [@grosser](http://github.com/grosser) for the inspiration to
this little gem plugin.

## Contributing

1. Fork it ( http://github.com/bitboxer/gem-web/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
