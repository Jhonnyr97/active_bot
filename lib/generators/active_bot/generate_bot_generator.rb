# lib/generators/active_bot/create_bot_generator.rb
require 'rails/generators/base'

module ActiveBot
  class GenerateBotGenerator < Rails::Generators::NamedBase
    source_root File.expand_path('templates', __dir__)

    def create_bot_file
      template "bot_template.rb", "bots/#{file_name}_bot.rb"
    end

    private

    def file_name
      name.underscore
    end
  end
end
