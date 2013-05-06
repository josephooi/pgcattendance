require 'test_helper'

class ConflictsControllerTest < ActionController::TestCase
  setup do
    @conflict = conflicts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:conflicts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create conflict" do
    assert_difference('Conflict.count') do
      post :create, conflict: { belongs_to: @conflict.belongs_to, belongs_to: @conflict.belongs_to, description: @conflict.description, details: @conflict.details, type: @conflict.type }
    end

    assert_redirected_to conflict_path(assigns(:conflict))
  end

  test "should show conflict" do
    get :show, id: @conflict
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @conflict
    assert_response :success
  end

  test "should update conflict" do
    put :update, id: @conflict, conflict: { belongs_to: @conflict.belongs_to, belongs_to: @conflict.belongs_to, description: @conflict.description, details: @conflict.details, type: @conflict.type }
    assert_redirected_to conflict_path(assigns(:conflict))
  end

  test "should destroy conflict" do
    assert_difference('Conflict.count', -1) do
      delete :destroy, id: @conflict
    end

    assert_redirected_to conflicts_path
  end
end
