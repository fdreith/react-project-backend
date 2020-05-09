require 'test_helper'

class TcommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tcomment = tcomments(:one)
  end

  test "should get index" do
    get tcomments_url, as: :json
    assert_response :success
  end

  test "should create tcomment" do
    assert_difference('Tcomment.count') do
      post tcomments_url, params: { tcomment: { employee_id: @tcomment.employee_id, supervisor_id: @tcomment.supervisor_id, task_id: @tcomment.task_id } }, as: :json
    end

    assert_response 201
  end

  test "should show tcomment" do
    get tcomment_url(@tcomment), as: :json
    assert_response :success
  end

  test "should update tcomment" do
    patch tcomment_url(@tcomment), params: { tcomment: { employee_id: @tcomment.employee_id, supervisor_id: @tcomment.supervisor_id, task_id: @tcomment.task_id } }, as: :json
    assert_response 200
  end

  test "should destroy tcomment" do
    assert_difference('Tcomment.count', -1) do
      delete tcomment_url(@tcomment), as: :json
    end

    assert_response 204
  end
end
