class CalorieIntake < ActiveRecord::Base

  def self.consumed (date)
    cic = CalorieIntake.where(date: date).reduce(0) do |sum, c|
      sum += c.number
    end
    cic.abs
  end
end
