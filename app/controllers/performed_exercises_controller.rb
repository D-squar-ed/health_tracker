class PerformedExercisesController < ApplicationController
  before_action :set_performed_exercise, only: [:show, :edit, :update, :destroy]

  # GET /performed_exercises
  def index
    @performed_exercises = PerformedExercise.all
  end

  # GET /performed_exercises/1
  def show
  end

  # GET /performed_exercises/new
  def new
    @performed_exercise = PerformedExercise.new
  end

  # GET /performed_exercises/1/edit
  def edit
  end

  # POST /performed_exercises
  def create
    @performed_exercise = PerformedExercise.new(performed_exercise_params)

    if @performed_exercise.save
      redirect_to @performed_exercise, notice: 'Performed exercise was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /performed_exercises/1
  def update
    if @performed_exercise.update(performed_exercise_params)
      redirect_to @performed_exercise, notice: 'Performed exercise was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /performed_exercises/1
  def destroy
    @performed_exercise.destroy
    redirect_to performed_exercises_url, notice: 'Performed exercise was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_performed_exercise
      @performed_exercise = PerformedExercise.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def performed_exercise_params
      params.require(:performed_exercise).permit(:workout, :date, :exercise_type_id)
    end
end
