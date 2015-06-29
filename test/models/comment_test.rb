require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    @comment = comments(:one)
  end

  test "should be valid" do
    assert @comment.valid?
  end

  test "should not be valid" do
    @comment.author = ""
    assert_not @comment.valid?
  end

  test "should not be valid" do
  end

end
