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
    post :create, (@comment) 
    assert_not_nil Comment.where(:author => @comment.author)
  end

end
