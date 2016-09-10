class ActivitiesController < ApplicationController

	def index
		@activities = Activity.all
	end

  def show
    @activity = Activity.find(params[:id])
  end


	def new
		@activitiy = Activity.new
  end

  def create
	  @activity = Activity.new(activity_params)

	  if @article.save
    	redirect_to @article
  	else
    	render 'new'
	  end

  end

  private

  def activity_params
    params.require(:activity).permit(:title, :body, :participants, :time_req, :resource_req, :location_req)
  end

end
