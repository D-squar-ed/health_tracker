class DashboardController < ApplicationController

  def index
    @steps_count = StepNumber.steps_count
  end

end
