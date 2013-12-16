class GalleryImagesController < InheritedResources::Base

  before_action :set_gallery_image, only: [:show, :edit, :update, :destroy]
  
  def index
     @gallery = Gallery.find(params[:gallery_id])
     @gallery_images = @gallery.gallery_images.page(params[:page]).per(2)
  end

  def create
    @gallery_image = GalleryImage.new(gallery_image_params)
    #@gallery_image.gallery = Gallery.find(params[:gallery_id])
    respond_to do |format|
      if @gallery_image.save
        format.html { redirect_to @gallery_image, notice: 'Gallery Image was successfully added.' }
        format.json { render action: 'show', status: :created, location: @gallery_image }
      else
        format.html { render action: 'new' }
        format.json { render json: @gallery_image.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def update
    
    respond_to do |format|
      if @gallery_image.update(gallery_image_params)
        format.html { redirect_to @gallery_image, notice: 'Gallery Image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @gallery_image.errors, status: :unprocessable_entity }
      end
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gallery_image
      @gallery_image = GalleryImage.find(params[:id])
    end
  
    def gallery_image_params
      params.require(:gallery_image).permit(:title, :gallery_id, :image, :description, :text)
    end
end
