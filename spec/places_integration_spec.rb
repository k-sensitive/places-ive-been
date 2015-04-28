require('capybara/spec')
require('./app')
Capybara.app = Sinatra:Application
set(:show_exceptions, false)
