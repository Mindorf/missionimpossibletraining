class WorkoutController < ApplicationController
  before_filter :authorize
  
  def index
    if current_user
      @workouts = current_user.workouts.all
    end
  end
  
  def show
    @workout = Workout.find(params[:id])
  end
  
  def new
    @workout = current_user.workouts.new
  end
  
  def edit
  end
  
  def create
    @workout = current_user.workouts.new(params[:workout])
    if @workout.save
      redirect_to @workout, :notice => "You have succesfully created a new workout"
    else
      render "new"
    end
  end

  def update
  end
end
