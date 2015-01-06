class StaticPagesController < ApplicationController
  
  def info
  	@html = HtmlData.find(1)
  end

  def prices
  	@html = HtmlData.find(2)
  end

  def map
  end

  def contact
  end

end
