import React, { Component } from 'react';

class CommentForm extends Component {

    constructor(props) {
        super(props)
        this.state = {
            author: '',
            text: ''
        }
        this.handleAuthorChange = this.handleAuthorChange.bind(this);
        this.handleTextChange = this.handleTextChange.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    handleAuthorChange(event) {
        this.setState({author: event.target.value})
    }

    handleTextChange(event) {
        this.setState({text: event.target.value})
    }

    handleSubmit(event) {
        event.preventDefault();
        //do some form validation
            const author = this.state.author.trim();
            const text = this.state.text.trim();
            if (!text || !author) {
                return 
            }
        //update list of comments in the comment box
            console.log('values', author, text)
            this.props.onCommentSubmit({ author: author, text: text})
        //reset the form
            this.setState({author: '', text: ''})

    }

    render () {
        return (
            <form onSubmit={this.handleSubmit}>
            <input 
                type="text" 
                placeholder="Name"
                value={this.state.author}
                onChange={this.handleAuthorChange}
                    />
            <input 
                type="text" 
                placeholder="Comment"
                value={this.state.text}
                onChange={this.handleTextChange}
                    />
            <input 
                type="submit" 
                value ="Post"/>
            </form>
        )

    }
}
export default CommentForm;