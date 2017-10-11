class Hackernews < ApplicationRecord
  require 'open-uri'
  require 'nokogiri'
    html_file = open("https://news.ycombinator.com/news")
    doc = Nokogiri::HTML(html_file)

    liste = doc.search('.athing')
    liste.each do |element|
      Hackernews.create!(
        title: element.css(".title>a").text,
        source: element.css(".title>.sitebit").text.str.gsub(/^"|"$/, '')
         )
    end
end
