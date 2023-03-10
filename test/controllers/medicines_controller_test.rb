require "test_helper"

class MedicinesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get medicines_index_url
    assert_response :success
  end

  test "should get show" do
    get medicines_show_url
    assert_response :success
  end

  test "should get new" do
    get medicines_new_url
    assert_response :success
  end

  test "should get create" do
    get medicines_create_url
    assert_response :success
  end

  test "should get update" do
    get medicines_update_url
    assert_response :success
  end
end
