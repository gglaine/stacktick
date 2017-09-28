class Archive < ApplicationRecord
  include HTTParty

  base_uri 'http://fresques.ina.fr/jalons/api/search?query=nature&limit=5&offset=5'
  default_params fields: "description", q: "search"
  format :json

  def self.for term
    get("", query: { query: term })["elements"]
  end

end
