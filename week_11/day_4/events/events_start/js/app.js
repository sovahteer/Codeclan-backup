document.addEventListener('DOMContentLoaded', () => {

    const theButton = document.querySelector('#button');
    theButton.addEventListener( 'click', handleButtonClick );

    const textField = document.querySelector('#input');
    textField.addEventListener( 'input', handleTextInput );

    const selectMenu = document.querySelector('#select');
    selectMenu.addEventListener('change', handleSelectChange);

    const textSubmit = document.querySelector('#form');
    textSubmit.addEventListener('submit', handleFormSubmit);

    
});

const handleButtonClick = function(){
    const buttonParagraph = document.querySelector('#button-result');
    buttonParagraph.textContent = "Button was DEFINITELY clicked"
}

const handleTextInput = function( event ){
    const inputParagraph = document.querySelector('#input-result');
    inputParagraph.textContent = `So far, you have typed: ${event.target.value}`;
    // console.log(event.target.value);
}

const handleSelectChange = function(event){
    const selectParagraph = document.querySelector('#select-result');
    selectParagraph.textContent = `you have selected: ${event.target.value}`;
}

const handleFormSubmit = function(event){
    event.preventDefault()
    const formParagraph = document.querySelector('#form-result');
    formParagraph.textContent = `${event.target.first_name.value} ${event.target.last_name.value}`;
}