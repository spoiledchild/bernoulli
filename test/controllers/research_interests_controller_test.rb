require 'test_helper'

class ResearchInterestsControllerTest < ActionController::TestCase
  setup do
    @research_interest = research_interests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:research_interests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create research_interest" do
    assert_difference('ResearchInterest.count') do
      post :create, research_interest: { current_projects: @research_interest.current_projects, research_details: @research_interest.research_details, research_details_en: @research_interest.research_details_en, research_introduciton: @research_interest.research_introduciton, research_topic: @research_interest.research_topic, research_topic_en: @research_interest.research_topic_en }
    end

    assert_redirected_to research_interest_path(assigns(:research_interest))
  end

  test "should show research_interest" do
    get :show, id: @research_interest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @research_interest
    assert_response :success
  end

  test "should update research_interest" do
    patch :update, id: @research_interest, research_interest: { current_projects: @research_interest.current_projects, research_details: @research_interest.research_details, research_details_en: @research_interest.research_details_en, research_introduciton: @research_interest.research_introduciton, research_topic: @research_interest.research_topic, research_topic_en: @research_interest.research_topic_en }
    assert_redirected_to research_interest_path(assigns(:research_interest))
  end

  test "should destroy research_interest" do
    assert_difference('ResearchInterest.count', -1) do
      delete :destroy, id: @research_interest
    end

    assert_redirected_to research_interests_path
  end
end
