# Run this file with:
# rackup 4_config.ru
require 'json'

class MyApp

  def call(env)
    movie_data = IO.read('rogue_one.json')

    [ '200',
      {'Content-Type' => 'text/html'},
      ["<html><body><h1>Hello world!</h1><p>This page should return JSON instead.</p></body></html>"]
    ]
  end

end

run MyApp.new

# Next steps:
# |> Create a Rack app to insert a Content-Length header
# |> Create a Rack app to insert an HTML footer
# |> Create a Rack app to add a Logger
