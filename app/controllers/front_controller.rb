class FrontController < ApplicationController
  def index
    @activities = Activity.all
    @news = News.all
  end

  def admin
  end
end
