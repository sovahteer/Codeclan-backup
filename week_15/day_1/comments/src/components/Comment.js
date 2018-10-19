import React, { Component } from 'react';

class Comment extends Component {

  render() {
    return (
      <div>
        <h1>{this.props.children}</h1>
        <p>{this.props.author}</p>
      </div>
    )
  }

}

export default Comment;
