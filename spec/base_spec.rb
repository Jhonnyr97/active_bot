require 'spec_helper'
require 'active_bot'

RSpec.describe ActiveBot::Base do
  describe '.configure' do
    it 'allows setting configuration' do
      bot = ActiveBot::Base.new
      bot.call = "test_call"
      bot.model = "test_model"

      expect(bot.instance_variable_get(:@call)).to eq("test_call")
      expect(bot.instance_variable_get(:@model)).to eq("test_model")
    end
  end

  describe '#build_instruction' do
    it 'builds instruction correctly' do
      bot = ActiveBot::Base.new
      bot.template = "Hello {bot_name}!"
      bot.input_variables = { bot_name: "TestBot" }

      expect(bot.build_instruction).to eq("Hello TestBot!")
    end
  end
end
