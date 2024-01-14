ActiveBot.configure do |config|
  config.llm_config do |llm|
    # Gem requirements:
    #    gem "ruby-openai", "~> 6.3.0"
    #
    # llm.call = Langchain::LLM::OpenAI.new(api_key: ENV["API_KEY"])
    # llm.model = 'gpt-3.5-turbo-0613'
    # llm.temperature = 0.9

    # llm.call =  Langchain::LLM::Ollama.new(url: ENV["OLLAMA_URL"])
    # llm.model = 'mistral'
    # llm.temperature = 0.9
    #
    # llm.template = "You are the {bot_name}, an intelligent AI that passes the Turing test.
    #       You answer with a focus on the following context.
    #       Remember to respond with a markdown code.
    #       # Context
    #       {memory}
    #       ## Conversation until now: {conversation}
    #       {input}"
    # llm.input_variables = { bot_name: "", memory: "", conversation: "", input: ""}
  end
end
