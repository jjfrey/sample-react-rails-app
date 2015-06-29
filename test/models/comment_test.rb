require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    @comment = comments(:one)
  end

  test "should be valid" do
    assert @comment.valid?
  end

  test "should not be valid without author" do
    @comment.author = ""
    assert_not @comment.valid?
  end

  test "should not be valid without text" do
    @comment.text = ""
    assert_not @comment.valid?
  end

  test "should allow replies" do
    comment = Comment.create(author: @comment.author, text: @comment.text)
    assert_not_nil comment

    reply = comments(:two)
    Comment.create(author: reply.author, text: reply.text, parent_id: comment.id)
  
    assert_equal(1, comment.replies.count)
  end

  test "recent_with_replies should pull the most recent as json" do
    reply = Comment.create(author: 'some dood', text: 'The dude abides', parent_id: @comment.id)

    json = Comment.recent_with_replies(1)
    json_reply = json[:replies][0]

    assert_equal(reply.author, json_reply[:author])

  end


end
