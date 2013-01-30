require 'rack/lobster'

use Rack::ShowExceptions
use Rack::CommonLogger
use Rack::Lint
run Rack::Lobster.new
