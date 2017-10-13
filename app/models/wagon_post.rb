class WagonPost < ApplicationRecord
  require 'open-uri'
  require 'nokogiri'

  html_file = open("https://www.lewagon.com/fr/blog/all") # site scrappe
  html_doc = Nokogiri::HTML(html_file) # variable qui contient objet nokogiri

  html_doc.search('.post-thumbnail').each do |element|
    WagonPost.create(
    title: element.css(".card-content>h2").text ,
    description: element.css(".card-content>p").text
    )
    end
end
