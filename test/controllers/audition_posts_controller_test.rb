require 'test_helper'

class AuditionPostsControllerTest < ActionController::TestCase
  setup do
    @audition_post = audition_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:audition_posts)
  end

  test "should create audition_post" do
    assert_difference('AuditionPost.count') do
      post :create, audition_post: { content: @audition_post.content, title: @audition_post.title, user_id: @audition_post.user_id }
    end

    assert_response 201
  end

  test "should show audition_post" do
    get :show, id: @audition_post
    assert_response :success
  end

  test "should update audition_post" do
    put :update, id: @audition_post, audition_post: { content: @audition_post.content, title: @audition_post.title, user_id: @audition_post.user_id }
    assert_response 204
  end

  test "should destroy audition_post" do
    assert_difference('AuditionPost.count', -1) do
      delete :destroy, id: @audition_post
    end

    assert_response 204
  end
end
