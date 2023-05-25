require "test_helper"

class TransactionReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transaction_report = transaction_reports(:one)
  end

  test "should get index" do
    get transaction_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_transaction_report_url
    assert_response :success
  end

  test "should create transaction_report" do
    assert_difference("TransactionReport.count") do
      post transaction_reports_url, params: { transaction_report: { customer_id: @transaction_report.customer_id, order_id: @transaction_report.order_id, payment_id: @transaction_report.payment_id, product_id: @transaction_report.product_id } }
    end

    assert_redirected_to transaction_report_url(TransactionReport.last)
  end

  test "should show transaction_report" do
    get transaction_report_url(@transaction_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_transaction_report_url(@transaction_report)
    assert_response :success
  end

  test "should update transaction_report" do
    patch transaction_report_url(@transaction_report), params: { transaction_report: { customer_id: @transaction_report.customer_id, order_id: @transaction_report.order_id, payment_id: @transaction_report.payment_id, product_id: @transaction_report.product_id } }
    assert_redirected_to transaction_report_url(@transaction_report)
  end

  test "should destroy transaction_report" do
    assert_difference("TransactionReport.count", -1) do
      delete transaction_report_url(@transaction_report)
    end

    assert_redirected_to transaction_reports_url
  end
end
