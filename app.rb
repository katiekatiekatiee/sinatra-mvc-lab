require_relative 'config/environment'

class App < Sinatra::Base
    get "/" do
        erb :"/user_input"
    end
    get "/piglatinize" do
        @phrases = PigLatinizer.all
        erb :"/index"
    end
    post "/piglatinize" do
        @pl = PigLatinizer.new
        @phrase = @pl.piglatinize(params["user_phrase"])

        erb :"/index"

    end
end