class GalleryController < ApplicationController
  def index
  	
  	@image_names = ['dog','book', 'road']

  	@images = Image.all #creates image records array [image record1, image record2]
  end
end
