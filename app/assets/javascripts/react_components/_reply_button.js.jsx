var ReplyButton = React.createClass({
  handleClick: function(event){
    debugger;
    this.props.onReplyClick(this.props.parentId);
  },
  render: function () {
    return (
      <a href="#" onClick={this.handleClick}>
      Reply
      </a>
    )
  }
});
