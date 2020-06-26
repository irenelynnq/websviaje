require 'test_helper'

class BudgetControllerTest < ActionDispatch::IntegrationTest
  test "should get budgetpage" do
    get budget_budgetpage_url
    assert_response :success
  end

end
