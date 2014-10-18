require 'test_helper'

class NewIssuesControllerTest < ActionController::TestCase
  setup do
    @new_issue = new_issues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:new_issues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create new_issue" do
    assert_difference('NewIssue.count') do
      post :create, new_issue: { description: @new_issue.description, no_followers: @new_issue.no_followers, title: @new_issue.title }
    end

    assert_redirected_to new_issue_path(assigns(:new_issue))
  end

  test "should show new_issue" do
    get :show, id: @new_issue
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @new_issue
    assert_response :success
  end

  test "should update new_issue" do
    patch :update, id: @new_issue, new_issue: { description: @new_issue.description, no_followers: @new_issue.no_followers, title: @new_issue.title }
    assert_redirected_to new_issue_path(assigns(:new_issue))
  end

  test "should destroy new_issue" do
    assert_difference('NewIssue.count', -1) do
      delete :destroy, id: @new_issue
    end

    assert_redirected_to new_issues_path
  end
end
