var CommentList = React.createClass({
  render: function () {
    var replyClick = this.props.onReplyClick;
    var commentNodes = this.props.comments.map(function ( comment ) {
      return <Comment onReplyClick={replyClick} commentId={ comment.id }  author={ comment.author } text={ comment.text } key={ comment.id } replies={ comment.replies } />
    });

    return (
      <div className="comment-list">
        { commentNodes }
      </div>
    )
  }
});
