module ActiveBot
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  class Configuration
    attr_accessor :llm, :vector

    def llm_config
      self.llm ||= LLMConfig.new
      yield(llm)
    end

    class LLMConfig
      attr_accessor :call, :model
    end

  end
end
