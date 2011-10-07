class SimpleController < ApplicationController
  def index
  end
  
  def static
  end



  def start
  
  end
  
  def result
  	@data1 = params[:text1]
    @data2 = params[:text2]
    @data3 = params[:text3]
    @data4 = params[:text4]
    @data5 = params[:text5]
  end

  def index
	@data1 = params[:text1]
    @data2 = params[:text2]
    @data3 = params[:text3]
    @data4 = params[:text4]
    @data5 = params[:text5]
	
	# @data5 = params[:radios1]
 
    #    @date_difference = Datedifference.new(@data3)
    #    @date_diff = @datedifference.datediff

  end


end
