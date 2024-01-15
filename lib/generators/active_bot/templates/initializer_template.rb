ActiveBot.configure do |config|
    # Gem requirements:
    #    gem "ruby-openai", "~> 6.3.0"

    # config.llm_call = Langchain::LLM::OpenAI.new(api_key: ENV["API_KEY"])
    # config.llm_model = 'gpt-3.5-turbo-0613'
    # config.llm_temperature = 0.9

    # config.llm_call =  Langchain::LLM::Ollama.new(url: ENV["OLLAMA_URL"])
    # config.llm_model = 'mistral'
    # config.llm_temperature = 0.9

    # config.llm_template = "You are the {bot_name}, an intelligent AI that passes the Turing test.
    #       You answer with a focus on the following context.
    #       Remember to respond with a markdown code.
    #       # Context
    #       {memory}
    #       ## Conversation until now: {conversation}
    #       {input}"
    # config.llm_template_variables = { bot_name: "", memory: "", conversation: "", input: ""}
end
