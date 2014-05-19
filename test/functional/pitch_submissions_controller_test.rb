require 'test_helper'

class PitchSubmissionsControllerTest < ActionController::TestCase
  setup do
    @pitch_submission = pitch_submissions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pitch_submissions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pitch_submission" do
    assert_difference('PitchSubmission.count') do
      post :create, pitch_submission: { pitch_id: @pitch_submission.pitch_id, pitcher_id: @pitch_submission.pitcher_id }
    end

    assert_redirected_to pitch_submission_path(assigns(:pitch_submission))
  end

  test "should show pitch_submission" do
    get :show, id: @pitch_submission
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pitch_submission
    assert_response :success
  end

  test "should update pitch_submission" do
    put :update, id: @pitch_submission, pitch_submission: { pitch_id: @pitch_submission.pitch_id, pitcher_id: @pitch_submission.pitcher_id }
    assert_redirected_to pitch_submission_path(assigns(:pitch_submission))
  end

  test "should destroy pitch_submission" do
    assert_difference('PitchSubmission.count', -1) do
      delete :destroy, id: @pitch_submission
    end

    assert_redirected_to pitch_submissions_path
  end
end
