class Lb < ActiveRecord::Base
  validates :weight, presence: true
  validates :date, presence: true
  validates :date, uniqueness: true

  def self.count_this_week
    where("created_at BETWEEN ? AND ?",
        Time.now.beginning_of_week, Time.now.end_of_week).count
  end

  def self.lb_avg
    @lb_avg = (Lb.sum(:weight))/count_this_week
  end

end
