class Coursera < ApplicationRecord
  include HTTParty

  base_uri 'https://api.coursera.org/api/courses.v1'
  default_params fields: "name", q: "search"
  format :json

  def self.for term
    get("", query: { query: term })["elements"]
  end
end
