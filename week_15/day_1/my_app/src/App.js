import React, { Component } from 'react';
import logo from './logo.svg';
import PiggyBank from './PiggyBank';

class App extends Component {
  render() {
    return (
      <PiggyBank 
      title="Saving Pig"
      owner="Euan"
      amountToChangeBy={5} 
      />
    );
  }
}
export default App;
