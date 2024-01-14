# frozen_string_literal: true

require_relative "active_bot/version"
require "langchain"

module ActiveBot
  class Error < StandardError; end
  class Base
    def self.configure
      yield(self)
    end

    def call=(call)
      @call = call
    end

    def model=(model)
      @model = model
    end

    def temperature=(temperature)
      @temperature = temperature
    end

    def template=(template)
      @template = template
    end

    def build_instruction
      @prompt = Langchain::Prompt::PromptTemplate.new(
        template: @template,
        input_variables: @input_variables.keys.map(&:to_s)
      )

      @prompt.format(
        **@input_variables
      )
    end

    def stream(&block)
      @stream = block
    end

    def complete(*params)

      raise "Langchain 'call' method not set" unless @call
      raise "Model not set" unless @model

      if @stream
        params[:stream] = proc do |chunk, _bytesize|
          @stream.call(chunk)
        end
      end


      @call.complete(
        model: @model,
        prompt: build_instruction,
        temperature: @temperature,
        **params
      )

    rescue => e
      raise "Error in complete method: #{e.message}"
    end

    def input_variables=(input_variables)
      raise ArgumentError, "input_variables must be a hash" unless input_variables.is_a?(Hash)

      @input_variables = input_variables

      @input_variables[:bot_name] ||= self.class.name
    end


  end
end
