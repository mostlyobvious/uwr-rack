require 'rack/builder'
require 'rack/lobster'
require './hello_world'
require './uwr-rails/config/environment'

builder = Rack::Builder.new do
  use Rack::CommonLogger
  use Rack::ShowExceptions

  map "/lobster" do
    run Rack::Lobster.new
  end

  map "/hello" do
    run HelloWorld.new
  end

  map "/" do
    run ->(env) { [404, {"Content-Type" => "text/plain"}, ["Not found"]] }
  end

  map "/rails" do
    run HomeController.action(:index)
  end
end

run builder
