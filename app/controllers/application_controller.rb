class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  # Define the Entry object
  class Entry
    def initialize(title)
      @title = title

    end
    attr_reader :title
  end

  def scrape
    doc = Nokogiri::HTML(open("https://news.ycombinator.com/"))

    entries = doc.css('.athing')
    @entriesArray = []
    entries.each do |entry|
      title = entry.css('.title>.storylink').text
      # subtext = entry.css('.subtext').text
      @entriesArray << Entry.new(title)
    end

    render template: 'scrape'
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :first_name, :last_name, :username, :password, :remember_me, :avatar])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password, :remember_me])
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :first_name, :last_name, :username, :password, :remember_me])
  end

end

