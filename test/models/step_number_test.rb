require 'test_helper'

class StepNumberTest < ActiveSupport::TestCase
  test "step count for month" do
    assert_equal("StepNumber.steps_taken") do
      StepNumber.create!(steps_taken: 200)
    end
    # StepNumber.sum(:steps_taken)

    # assert_no_difference("StepNumber.count_this_month") do
    #   StepNumber.create!(collector: "AMason", amount: -200, created_at: Time.now - 1.month)
    # end

  end


  # test "current month transaction count" do
  #   assert_difference("Exchange.count_this_month") do
  #     Exchange.create!(collector: "AMason", amount: -200)
  #   end
  #   assert_no_difference("Exchange.count_this_month") do
  #     Exchange.create!(collector: "AMason", amount: -200, created_at: Time.now - 1.month)
  #   end
  # end
end
