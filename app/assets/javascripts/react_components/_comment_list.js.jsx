var CommentList = React.createClass({
  render: function () {
    var commentNodes = this.props.comments.map(function ( comment ) {
      return <Comment author={ comment.author } text={ comment.text } key={ comment.id } replies={ comment.replies } />
    });

    return (
      <div className="comment-list">
        { commentNodes }
      </div>
    )
  }
});
