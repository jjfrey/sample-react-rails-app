var Comment = React.createClass({
  render: function () {
    return (
      <div>
        <h4>{ this.props.author } said:</h4>
        <p>{ this.props.text }</p>
        <ReplyButton parentId={this.props.commentId} onReplyClick={this.props.onReplyClick} />
        <ReplyList replies={ this.props.replies } />
        
      </div>
    )
  }
});
