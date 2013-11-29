require 'test_helper'

class TeamMembersControllerTest < ActionController::TestCase
  setup do
    @team_member = team_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:team_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create team_member" do
    assert_difference('TeamMember.count') do
      post :create, team_member: { curriculum_vitae: @team_member.curriculum_vitae, description: @team_member.description, email: @team_member.email, image: @team_member.image, job_title: @team_member.job_title, name: @team_member.name }
    end

    assert_redirected_to team_member_path(assigns(:team_member))
  end

  test "should show team_member" do
    get :show, id: @team_member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @team_member
    assert_response :success
  end

  test "should update team_member" do
    patch :update, id: @team_member, team_member: { curriculum_vitae: @team_member.curriculum_vitae, description: @team_member.description, email: @team_member.email, image: @team_member.image, job_title: @team_member.job_title, name: @team_member.name }
    assert_redirected_to team_member_path(assigns(:team_member))
  end

  test "should destroy team_member" do
    assert_difference('TeamMember.count', -1) do
      delete :destroy, id: @team_member
    end

    assert_redirected_to team_members_path
  end
end
