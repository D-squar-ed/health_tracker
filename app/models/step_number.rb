class StepNumber < ActiveRecord::Base

  def count_this_month
    where("created_at BETWEEN ? AND ?",
        Time.now.beginning_of_month, Time.now.end_of_month).count
  end

  def self.steps_count
    @steps = StepNumber.sum(:steps_taken)
  end

end
