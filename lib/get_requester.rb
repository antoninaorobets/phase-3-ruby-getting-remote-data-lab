# Write your code here

require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
    attr_accessor :URL
    def initialize(url)
        self.URL = url
    end
    def get_response_body
        uri = URI.parse(self.URL)
        responce = Net::HTTP.get_response(uri)
        responce.body
    end

    def parse_json
        JSON.parse(self.get_response_body)
    end
end