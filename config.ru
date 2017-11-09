# Run this file with:
# rackup 4_config.ru
require 'json'

class MyApp

  def call(env)
    movie_data = IO.read('rogue_one.json')

    if env['HTTP_IF_MODIFIED_SINCE'] == '2017-10-01'
      [
        '301',
        {"Location" => "https://mydomain.com/movies/1"},
        []
      ]
    else
      [ '200',
        {'Content-Type' => 'text/html', 'Cache-Control' => 'max-age=3600',
        'Last-Modified' => '2017-10-01',
        ["<html><body><h1>Hello world!</h1><p>This page should return JSON instead.</p></body></html>"]
      ]
    end
  end

end

run MyApp.new
