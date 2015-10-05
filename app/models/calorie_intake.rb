class CalorieIntake < ActiveRecord::Base

  def self.consumed (date)
    cic = CalorieIntake.where(date: date)
    cic.sum('nomnom')
  end

  def self.daily_intake
    today = self.all.select{|s| s.date.day == DateTime.now.day}
    today.sum('nomnom')
  end

  def self.net_nomnoms
    (self.daily_intake - ExerciseStatistic.nomnoms_lost).to_f
  end
end
