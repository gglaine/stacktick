# == Schema Information
#
# Table name: techmemes
#
#  id         :integer          not null, primary key
#  title      :string
#  source     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#


class Techmeme < ApplicationRecord
  require 'open-uri'
  require 'nokogiri'

    html_file = open("https://www.techmeme.com/") # site scrappe
    html_doc = Nokogiri::HTML(html_file) # variable qui contient objet nokogiri

    html_doc.search('.itc1').each do |element| # chaque element avec la classe itc1
      Techmeme.create(
      title: element.css(".ourh").text, # texte des balises itc1 avec la classe .ourh
      source: element.css(".ourh").map { |link| link['href'].to_s })
      # Techmeme.create
    end
end
