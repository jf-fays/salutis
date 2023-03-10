require "test_helper"

class MedicalProceduresControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get medical_procedures_new_url
    assert_response :success
  end

  test "should get show" do
    get medical_procedures_show_url
    assert_response :success
  end

  test "should get create" do
    get medical_procedures_create_url
    assert_response :success
  end

  test "should get update" do
    get medical_procedures_update_url
    assert_response :success
  end
end
