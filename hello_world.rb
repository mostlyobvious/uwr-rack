class HelloWorld
  def call(env)
    [204, {"Content-Type" => "text/plain"}, ["Hello World!"]]
  end
end
