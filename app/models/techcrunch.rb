# == Schema Information
#
# Table name: techcrunches
#
#  id         :integer          not null, primary key
#  title      :string
#  excerpt    :string
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Techcrunch < ApplicationRecord
  require 'open-uri'
  require 'nokogiri'

  html_file = open("https://techcrunch.com/popular/") # site scrappe
  html_doc = Nokogiri::HTML(html_file) # variable qui contient objet nokogiri

  html_doc.search('.block-content').each do |element|
    url = element.css(".post-title>a").map { |link| link['href'].to_s }
    Techcrunch.create(
    title: element.css(".post-title").text,
    excerpt: element.css(".excerpt").text,
    url: url[0].gsub(/^\W{2}https:\/\/|"\W$/, " ")

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
