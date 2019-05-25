$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'vcr'
require 'simplecov'
SimpleCov.start

VCR.configure do |c|
  c.cassette_library_dir = 'test/fixtures/vcr_cassettes'
  c.hook_into :webmock # or :fakeweb
end

require 'gem/web'
require "minitest/autorun"
require "mocha/minitest"