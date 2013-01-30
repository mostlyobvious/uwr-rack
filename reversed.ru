require './hello_world'

class ReverseMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, body = @app.call(env)
    [status, headers, body.map(&:reverse)]
  end
end

use ReverseMiddleware
run HelloWorld.new
