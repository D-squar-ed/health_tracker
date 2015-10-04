class CalorieIntake < ActiveRecord::Base

  def self.consumed (date)
    cic = CalorieIntake.where(date: date).reduce(0) do |sum, c|
      sum += c.number
    end
    cic.abs
  end

  def self.daily_intake
    today = self.all.select{|s| s.date.day == DateTime.day}
    today.reduce(0){|sum, s| sum + s.calorie_intake}.to_f
  end

  def self.net_nomnoms
    (self.daily_intake - ExerciseStatistic.nomnoms_lost).to_f
  end
end
