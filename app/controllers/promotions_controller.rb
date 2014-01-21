class PromotionsController < InheritedResources::Base

  load_and_authorize_resource

  before_action :set_promotion, only: [:show, :edit, :update, :destroy]
  
  def create
    @promotion = Promotion.new(promotion_params)
    @promotion.user = current_user
    respond_to do |format|
      if @promotion.save
        format.html { redirect_to @promotion, notice: 'Promotion was successfully created.' }
        format.json { render action: 'show', status: :created, location: @promotion }
      else
        format.html { render action: 'new' }
        format.json { render json: @promotion.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @promotion.update(promotion_params)
        format.html { redirect_to @promotion, notice: 'Promotion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @promotion.errors, status: :unprocessable_entity }
      end
    end
  end
  
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promotion
      @promotion = Promotion.find(params[:id])
    end
    
    def promotion_params
      params.require(:promotion).permit(:region_id, :brand_id, :currency, :promotion_category_id, :budget_amount, :amount_requested, :start_date, :end_date, :description, :user_id, documents_attributes: [:id, :title, :file] )
    end
end
