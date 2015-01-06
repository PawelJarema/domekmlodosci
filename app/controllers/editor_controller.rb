class EditorController < ApplicationController
  http_basic_authenticate_with :name => "PanBogdan", :password => "haslo108"
  before_action :seed_db
  layout 'editor'

  def informacje
  	@html = get_html(1)
  	render :edit
  end

  def cennik
  	@html = get_html(2)
  	render :edit
  end

  def dojazd
  	@html = get_html(3)
  	render :edit
  end

  def kontakt
  	@html = get_html(4)
  	render :edit
  end

  def save
  	p = html_params
  	@html = HtmlData.find(p[:id])
  	@html.update_attributes(p)
  	redirect_to :back
  end

  def save_photo
  	@photo = Photo.new(photo_params)
  	@photo.save
  	redirect_to :back
  end

  def delete_photo
  	@photo = Photo.find(params[:id])
  	@photo.delete
  	redirect_to :back
  end

  def seed_db
  	unless HtmlData.all.any?
  		for i in 1..4
  			HtmlData.new.save
  		end
  	end
  end

  private
  	  def html_params
  	  	params.require(:html).permit(:id, :title, :html)
  	  end

  	  def photo_params
  	  	params.require(:photo).permit(:photo)
  	  end

	  def get_html(id)
	  	HtmlData.find(id)
	  end
end
