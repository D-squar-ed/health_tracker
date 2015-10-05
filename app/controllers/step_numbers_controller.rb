class StepNumbersController < ApplicationController
  before_action :set_step_number, only: [:show, :edit, :update, :destroy]

  def index
    @step_numbers = StepNumber.all
  end

  def show
  end

  def new
    @step_number = StepNumber.new
  end

  def edit
  end

  # POST /lbs
  def create
    @step_number = StepNumber.new(step_number_params)

    if @step_number.save
      redirect_to @step_number, notice: 'Step Number was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /lbs/1
  def update
    if @step_number.update(step_number_params)
      redirect_to @step_number, notice: 'Step Number was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /step_number/1
  def destroy
    @step_number.destroy
    redirect_to step_numbers_url, notice: 'Step Number was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_step_number
      @step_number = StepNumber.find(params[:id])
    end

    def set_statistics
      @steps_count = StepNumber.steps_count
    end

    # Only allow a trusted parameter "white list" through.
    def step_number_params
      params.require(:step_number).permit(:steps_taken, :date)
    end
end
