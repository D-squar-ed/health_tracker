class Lb < ActiveRecord::Base
  validates :weight, presence: true
  validates :date, presence: true
  validates :date, uniqueness: true

end
