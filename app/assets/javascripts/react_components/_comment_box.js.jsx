var CommentBox = React.createClass({
  getInitialState: function () {
    return JSON.parse(this.props.presenter);
  },
  handleReplyClick: function(parentId){
    this.setState({toggle: !this.state.toggle})

  },
  handleCommentSubmit: function ( formData, action ) {
    $.ajax({
      data: formData,
      url: action,
      type: "POST",
      dataType: "json",
      success: function ( data ) {
        this.setState({ comments: data });
      }.bind(this)
    });
  },

  render: function () {
    return (
      <div className="comment-box">
        <img src={ this.props.imgSrc } alt={ this.props.imgAlt } />
        <CommentList onReplyClick={this.handleReplyClick} comments={ this.state.comments }  />
        <hr />
        <h2>Add a comment:</h2>
        <CommentForm form={ this.state.form }  onCommentSubmit={ this.handleCommentSubmit } />
      </div>
    );
  }
});
