module ActiveBot
  class Configuration
    attr_accessor :llm

    def initialize
      @llm = OpenStruct.new
    end

    def llm_config
      yield(@llm) if block_given?
    end
  end

  class << self
    attr_accessor :configuration

    def configure
      self.configuration ||= Configuration.new
      yield(configuration) if block_given?
    end
  end
end
