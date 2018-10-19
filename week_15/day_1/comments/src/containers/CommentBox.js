import React, { Component } from 'react';
import CommentList from '../components/CommentList';
import CommentForm from '../components/CommentForm';

class CommentBox extends Component {

  constructor(props) {
    super(props);
    this.state = {
      data: [
        { author: "Rick Henry", text: "This lesson is great!" },
        { author: "Val Gibson", text: "I love React." }
      ]
    }
    this.handleCommentSubmit = this.handleCommentSubmit.bind(this);
  }

  handleCommentSubmit(comment) {
    const newComments = this.state.data.concat([comment]);
    this.setState({data: newComments})
  }

  render() {
    return (
      <React.Fragment>
        <h2>Add a comment</h2>
        <CommentForm onCommentSubmit={this.handleCommentSubmit}/>
        <h2>Comment List</h2>
        <CommentList data={this.state.data} />
      </React.Fragment>
    )
  }

}

export default CommentBox;
