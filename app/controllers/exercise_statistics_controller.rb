class ExerciseStatisticsController < ApplicationController
  before_action :set_exercise_statistic, only: [:show, :edit, :update, :destroy]

  # GET /exercise_statistics
  def index
    @exercise_statistics = ExerciseStatistic.all
  end

  # GET /exercise_statistics/1
  def show
  end

  # GET /exercise_statistics/new
  def new
    @exercise_statistic = ExerciseStatistic.new
  end

  # GET /exercise_statistics/1/edit
  def edit
  end

  # POST /exercise_statistics
  def create
    @exercise_statistic = ExerciseStatistic.new(exercise_statistic_params)

    if @exercise_statistic.save
      redirect_to @exercise_statistic, notice: 'Exercise statistic was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /exercise_statistics/1
  def update
    if @exercise_statistic.update(exercise_statistic_params)
      redirect_to @exercise_statistic, notice: 'Exercise statistic was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /exercise_statistics/1
  def destroy
    @exercise_statistic.destroy
    redirect_to exercise_statistics_url, notice: 'Exercise statistic was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exercise_statistic
      @exercise_statistic = ExerciseStatistic.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def exercise_statistic_params
      params.require(:exercise_statistic).permit(:duration, :date, :exercise_type_id)
    end
end
