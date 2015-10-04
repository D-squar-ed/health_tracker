class ExerciseStatisticsController < ApplicationController
  before_action :set_exercise_statistic, only: [:show, :edit, :update, :destroy]

  def index
    @exercise_statistics = ExerciseStatistic.all
  end

  def show
  end

  def new
    @exercise_statistic = ExerciseStatistic.new
  end

  def edit
  end

  def create
    @exercise_statistic = ExerciseStatistic.new(exercise_statistic_params)
    respond_to do |format|
      if @exercise_statistic.save
        format.html {redirect_to @exercise_statistic, notice: 'Exercise statistic was successfully created.'}
      else
        format.html {render :new}
      end
    end
  end

  def update
    respond_to do |format|
      if @exercise_statistic.update(exercise_statistic_params)
        format.html {redirect_to @exercise_statistic, notice: 'Exercise statistic was successfully updated.'}
      else
        format.html {render :edit}
      end
    end
  end

  def destroy
    @exercise_statistic.destroy
    redirect_to exercise_statistics_url, notice: 'Exercise statistic was successfully destroyed.'
  end

  private
    def set_exercise_statistic
      @exercise_statistic = ExerciseStatistic.find(params[:id])
    end

    def exercise_statistic_params
      params.require(:exercise_statistic).permit(:duration, :date, :exercise_type_id)
    end
end
