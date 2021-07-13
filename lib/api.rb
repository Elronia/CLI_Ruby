#!/usr/bin/env ruby

require 'pry'
require 'net/http'
require 'open-uri'
require 'json'

class Api

    URL = ""
    def initialize(url)
        @url = url
        @card_objects = []
    end

    def get_response_body
        @uri = URI.parse(@url)
        @response = Net::HTTP.get_response(@uri)
        @response.body
    end

    def parse_json
        @programs = JSON.parse(self.get_response_body)
        binding.pry
        @programs["articles"].each do |article|
            Article.new(article)
        end 
    end

end
