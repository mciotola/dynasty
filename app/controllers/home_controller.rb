class HomeController < ApplicationController
  def index
  end
  
  def alert
    render :js => "alert('Hello Gemmy');"
  end

end
