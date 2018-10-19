import React from 'react';
class PiggyBank extends React.Component {
    
    constructor(props){
        super(props);
        this.state = {
            total: 0,
            amountToChangeBy: props.amountToChangeBy
        }
        
        this.deposit = this.deposit.bind(this);
        this.withdraw = this.withdraw.bind(this);
    }



    deposit(){
        this.setState(prevState => {
            return {total: prevState.total + this.state.amountToChangeBy}
        });
    }

    withdraw(){
        this.setState(prevState => { 
            let newTotal = prevState.total - this.state.amountToChangeBy
            if (newTotal < 0) newTotal = 0;
            return ({total: newTotal})

        });
    }

    render() {
        return (
            <div className="bank-box">
                <h1>{`${this.props.owner}'s ${this.props.title}`}</h1>
                <p>I contain: £{this.state.total}</p>
                <button onClick={this.deposit}>Add</button>
                <button onClick={this.withdraw}>Withdraw</button>
            </div>
        )
    }
}

export default PiggyBank;