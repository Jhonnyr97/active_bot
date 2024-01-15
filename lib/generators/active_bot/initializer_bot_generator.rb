# lib/generators/active_bot/create_bot_generator.rb
require 'rails/generators/base'

module ActiveBot
  class InitializerBotGenerator < Rails::Generators::Base
    def create_initializer_file
      template "initializer_template.rb", "config/initializers/active_bot.rb"
    end
  end
end
