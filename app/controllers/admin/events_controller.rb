class Admin::EventsController < Admin::BaseController
  def index
    @events = Event.all
  end
  def create
    @event = Event.new event_params
    if @event.save
      flash[:success] = 'Add successfully'
      redirect_to admin_events_path
    else
      flash[:danger] = 'Add fails'
      redirect_to admin_events_path
    end
  end

  # def show; end

  # def edit; end

  # def update
  #   if @category.update(category_params)
  #     flash[:success] = 'Update successfully'
  #     redirect_to admin_categories_path
  #   else
  #     flash[:danger] = 'Update fails'
  #     render :edit
  #   end
  # end

  # def destroy
  #   @category.destroy
  #   respond_to do |format|
  #     format.html { redirect_to admin_category_url, notice: 'Product was successfully destroyed.' }
  #     format.js
  #   end
  # end
  private 
  def event_params
    params.require(:event).permit :name, :content, :start_date, :end_date, :user_id
  end
end