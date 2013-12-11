class GalleriesController < InheritedResources::Base

  load_and_authorize_resource

  before_action :set_gallery, only: [:show, :edit, :update, :destroy]
  
  def create
    @gallery = Gallery.new(gallery_params)
    @gallery = current_user
    respond_to do |format|
      if @gallery.save
        format.html { redirect_to @gallery, notice: 'Gallery was successfully created.' }
        format.json { render action: 'show', status: :created, location: @gallery }
      else
        format.html { render action: 'new' }
        format.json { render json: @gallery.errors, status: :unprocessable_entity }
      end
    end
  end
  
  
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gallery
      @gallery = Gallery.find(params[:id])
    end
    
    def gallery_params
      params.require(:gallery).permit(:title, :description, :text)
    end
  
end
