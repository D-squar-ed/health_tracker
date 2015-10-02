class CalorieIntakesController < ApplicationController
  before_action :set_calorie_intake, only: [:show, :edit, :update, :destroy]

  def index
    @calorie_intakes = CalorieIntake.all
  end

  def show
  end

  def new
    @calorie_intake = CalorieIntake.new
  end

  def edit
  end

  def create
    @calorie_intake = CalorieIntake.new(calorie_intake_params)

    if @calorie_intake.save
      redirect_to @calorie_intake, notice: 'Calorie intake was successfully created.'
    else
      render :new
    end
  end

  def update
    if @calorie_intake.update(calorie_intake_params)
      redirect_to @calorie_intake, notice: 'Calorie intake was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @calorie_intake.destroy
    redirect_to calorie_intakes_url, notice: 'Calorie intake was successfully destroyed.'
  end

  private
    def set_calorie_intake
      @calorie_intake = CalorieIntake.find(params[:id])
    end

    def calorie_intake_params
      params.require(:calorie_intake).permit(:nomnom, :date)
    end
end
