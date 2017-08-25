desc "I scrape hacker news homepage"
task :scrape_hn do
    require 'open-uri'
    require 'nokogiri'
    html_file = open("https://news.ycombinator.com/news")
    doc = Nokogiri::HTML(html_file)
    liste = doc.search('.athing')
    liste.each do |element|
      Article.create!(
        title: element.css(".title>a").text,
        source: element.css(".title>.sitebit").text
         )
    end
end

# In the console run
# require 'rake'
# Techkilla::Application.load_tasks
# Rake::Task['scrape_hn'].invoke

# url: element.css(".title>a")[0]["href"]
