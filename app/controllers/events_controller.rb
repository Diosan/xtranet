class EventsController < InheritedResources::Base

  load_and_authorize_resource

  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render action: 'show', status: :created, location: @event }
      else
        format.html { render action: 'new' }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end
    
    def event_params
      params.require(:event).permit(:name, :date, :image, :description, :text, :user_id)
    end

end
