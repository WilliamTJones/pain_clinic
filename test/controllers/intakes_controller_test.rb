require 'test_helper'

class IntakesControllerTest < ActionController::TestCase
  setup do
    @intake = intakes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:intakes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create intake" do
    assert_difference('Intake.count') do
      post :create, intake: { average_pain_last_week: @intake.average_pain_last_week, complaint_1: @intake.complaint_1, complaint_2: @intake.complaint_2, complaint_3: @intake.complaint_3, concentration: @intake.concentration, context_of_pain: @intake.context_of_pain, current_pain_meds: @intake.current_pain_meds, enjoyment: @intake.enjoyment, general_activity: @intake.general_activity, illness_history: @intake.illness_history, interaction_with_others: @intake.interaction_with_others, least_pain_one_week: @intake.least_pain_one_week, modifying_factors: @intake.modifying_factors, mood: @intake.mood, normal_work: @intake.normal_work, pain_duration: @intake.pain_duration, pain_now: @intake.pain_now, pain_timing: @intake.pain_timing, signs_and_sympotoms: @intake.signs_and_sympotoms, sleep: @intake.sleep, worst_pain_one_week: @intake.worst_pain_one_week }
    end

    assert_redirected_to intake_path(assigns(:intake))
  end

  test "should show intake" do
    get :show, id: @intake
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @intake
    assert_response :success
  end

  test "should update intake" do
    patch :update, id: @intake, intake: { average_pain_last_week: @intake.average_pain_last_week, complaint_1: @intake.complaint_1, complaint_2: @intake.complaint_2, complaint_3: @intake.complaint_3, concentration: @intake.concentration, context_of_pain: @intake.context_of_pain, current_pain_meds: @intake.current_pain_meds, enjoyment: @intake.enjoyment, general_activity: @intake.general_activity, illness_history: @intake.illness_history, interaction_with_others: @intake.interaction_with_others, least_pain_one_week: @intake.least_pain_one_week, modifying_factors: @intake.modifying_factors, mood: @intake.mood, normal_work: @intake.normal_work, pain_duration: @intake.pain_duration, pain_now: @intake.pain_now, pain_timing: @intake.pain_timing, signs_and_sympotoms: @intake.signs_and_sympotoms, sleep: @intake.sleep, worst_pain_one_week: @intake.worst_pain_one_week }
    assert_redirected_to intake_path(assigns(:intake))
  end

  test "should destroy intake" do
    assert_difference('Intake.count', -1) do
      delete :destroy, id: @intake
    end

    assert_redirected_to intakes_path
  end
end
