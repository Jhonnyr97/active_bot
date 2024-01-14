# frozen_string_literal: true

require_relative "lib/active_bot/version"

Gem::Specification.new do |spec|
  spec.name = "active_bot"
  spec.version = ActiveBot::VERSION
  spec.authors = ["Nilthon Jhon Rojas Apumayta"]
  spec.email = ["oneill.jhon97@gmail.com"]

  spec.summary = "Ruby on Rails gem for easy bot development with large language models (LLMs), offering intuitive integration and customization."
  spec.description = "Ruby on Rails gem designed to simplify the development of interactive bots using large language models (LLMs), providing an intuitive interface and advanced features for integration and customization."
  spec.homepage = "https://github.com/Jhonnyr97/active_bot"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = "https://github.com/Jhonnyr97/active_bot"
  spec.metadata["source_code_uri"] = "https://github.com/Jhonnyr97/active_bot"
  spec.metadata["changelog_uri"] = "https://github.com/Jhonnyr97/active_bot/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "langchainrb"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
