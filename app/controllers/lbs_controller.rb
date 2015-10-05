class LbsController < ApplicationController
  before_action :set_lb, only: [:show, :edit, :update, :destroy]

  # GET /lbs
  def index
    @lbs = Lb.all
  end

  # GET /lbs/1
  def show
  end

  # GET /lbs/new
  def new
    @lb = Lb.new
  end

  # GET /lbs/1/edit
  def edit
  end

  # POST /lbs
  def create
    @lb = Lb.new(lb_params)

    if @lb.save
      redirect_to @lb, notice: 'Lb was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /lbs/1
  def update
    if @lb.update(lb_params)
      redirect_to @lb, notice: 'Lb was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /lbs/1
  def destroy
    @lb.destroy
    redirect_to lbs_url, notice: 'Lb was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lb
      @lb = Lb.find(params[:id])
    end

    def set_lb_statistics
      @lb_avg = Lb.lb_avg
    end

    # Only allow a trusted parameter "white list" through.
    def lb_params
      params.require(:lb).permit(:weight, :date)
    end
end
