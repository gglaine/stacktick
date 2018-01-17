class WagonPost < ApplicationRecord
  validates :title, uniqueness: true

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

  def self.dedupe
    grouped = all.group_by{|model| [model.title] }
    grouped.values.each do |duplicates|
      first_one = duplicates.shift
      duplicates.each{ |double| double.destroy }
    end
  end
end
