module ActiveBot
  class Configuration
    attr_accessor :llm_call, :llm_model, :llm_temperature, :llm_template, :llm_template_variables
  end

  class << self
    attr_accessor :configuration

    def configure
      self.configuration ||= Configuration.new
      yield(configuration) if block_given?
    end
  end
end
