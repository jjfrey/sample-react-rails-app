var ReplyButton = React.createClass({
  handleClick: function(event){
    this.props.onReplyClick(this.props.parentId);
    element = document.getElementById('parent_id');
    element.value = this.props.parentId;
  },
  render: function () {
    return (
      <a href="#" onClick={this.handleClick}>
      Reply
      </a>
    )
  }
});
