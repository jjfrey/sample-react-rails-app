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

  test "should get index with replies for comments" do
    reply = Comment.create(author: 'one reply', text: 'I second that', parent_id: @comment.id)
    get :index
    assert_response :success
    presenter = assigns(:presenter)
    first_comment = presenter[:comments][0]
    first_reply = first_comment[:replies][0]

    assert_equal(reply, first_reply)
  end


end
