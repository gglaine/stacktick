class CoursesController < ApplicationController

  def index
    @search_term = ""
    @courses = Coursera.for(@search_term)
  end
end
