class FrontController < ApplicationController
  layout 'admin', :only => [:admin]
  def index
    @activities = Activity.all
    @news = News.all
    @slides = Slide.all
  end

  def product
  end

  def market
  end

  def field
  end

  def equipment
  end

  def contact
  end

  def admin
  end

  def application
  end
  
end
