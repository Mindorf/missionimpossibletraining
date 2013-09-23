class RunningExerciseController < ApplicationController
  def index
    @runs = RunningExercise.all
  end
  
  def show
    @run = RunningExercise.find(params[:id])
  end
  
  def new
    @workout = Workout.find(params[:workout_id])
    @run = @workout.running_exercises.new
  end
  
  def edit
    @run = RunningExercise.find(params[:id])
  end
  
  def create
    @workout = Workout.find(params[:workout_id])
    @run = @workout.running_exercises.new(params[:running_exercises])
    
    if @run.save
      redirect_to @run.workout, notice: 'Your running exercise was successfully added to your workout'
    else
      render action: "new"
    end
  end
  
  def update
    @run = RunningExercise.find(params[:id])


    if @run.update_attributes(params[:run])
      redirect_to @run, notice: 'Run was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @run = RunningExercise.find(params[:id])
    @run.destroy

    redirect_to workouts_path
  end
end


