# frozen_string_literal: true
require 'net/http'
require 'uri'
require 'json'
require_relative 'books_search/version'

module BooksSearch
  class Error < StandardError; end

  GOOGLEAPI_URL = 'https://www.googleapis.com/books/v1/volumes?q='

  class << self
    def get_book_json(params)
      uri = URI.parse(GOOGLEAPI_URL + params)
      resources = Net::HTTP.get(uri)
      puts resources
    end
  end
end
