# == Schema Information
#
# Table name: hackernews
#
#  id         :integer          not null, primary key
#  title      :string
#  source     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Hackernews < ApplicationRecord

  require 'open-uri'
  require 'nokogiri'
    html_file = open("https://news.ycombinator.com/news")
    doc = Nokogiri::HTML(html_file)

    liste = doc.search('.athing')
    liste.each do |element|
      source = element.css(".title>a").map { |link| link['href'].to_s }
      Hackernews.create!(
        title: element.css(".title>a").text,
        # source: element.css(".title>.sitebit").text.gsub(/^"|"$/, '')
        source: source[0]
         )
    end


end
