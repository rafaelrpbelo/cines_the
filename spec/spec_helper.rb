# Require the application file
require './lib/cines_the'

# Require all files in ./spec/support folder
Dir['./spec/support/**/*.rb'].each { |f| require f }
