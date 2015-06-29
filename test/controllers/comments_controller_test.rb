require 'test_helper'

class CommentsControllerTest < ActionController::TestCase

  def setup
    @comment = comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:presenter)
  end

  test "should post create" do
    assert_difference('Comment.count') do
      post :create, comment: {author: @comment.author, text: @comment.text}
    end

    assert_redirected_to comments_path

  end

end
