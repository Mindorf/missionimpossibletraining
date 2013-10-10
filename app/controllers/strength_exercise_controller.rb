class StrengthExerciseController < ApplicationController
  def index
    @strexes = StrengthExercise.all
  end
  
  def show
    @strex = StrengthExercise.find(params[:id])
  end
  
  def new
    @workout = Workout.find(params[:workout_id])
    @strex = @workout.strength_exercises.new
  end
  
  def edit
    @strex = StrengthExercise.find(params[:id])
  end
  
  def create
    @workout = Workout.find(params[:strength_exercise][:workout_id])
    params[:strength_exercise].delete :workout_id
    @strex = @workout.strength_exercises.new(params[:strength_exercise])
    
    if @strex.save
      redirect_to @strex.workout, notice: 'Your strength exercise was successfully added to your workout'
    else
      render action: "new"
    end
  end
  
  def update
    @strex = StrengthExercise.find(params[:id])


    if @strex.update_attributes(params[:strex])
      redirect_to @strex, notice: 'Strength exercise was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @strex = StrengthExercise.find(params[:id])
    @strex.destroy

    redirect_to workouts_path
  end
end


