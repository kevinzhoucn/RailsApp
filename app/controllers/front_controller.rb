class FrontController < ApplicationController
  def index
    @activities = Activity.all
    @news = News.all
    @slides = Slide.all
  end

  def admin
  end
end
