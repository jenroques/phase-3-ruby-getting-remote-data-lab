# Write your code here
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester 
    URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"

    def get_response_body 
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body 
    end

    def parse_json
        datas = JSON.parse(self.get_response_body)
        datas.collect do |data|
            data["people"]
        end
    end
end