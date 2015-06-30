var ReplyList = React.createClass({
  render: function () {
    var replyClick = this.props.onReplyClick;
    var replyNodes = this.props.replies.map(function ( reply ) {
      return <Reply author={ reply.author } text={ reply.text } key={ reply.id } />
    });

    return (
      <div className="reply-list">
        { replyNodes }
      </div>
    )
  }
});
