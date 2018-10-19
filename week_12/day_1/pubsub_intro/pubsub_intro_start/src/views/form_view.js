const PubSub = require('../helpers/pub_sub');

const FormView = function(){

}

FormView.prototype.bindEvents = function(){
    const form = document.querySelector('#wordcounter-form')
    form.addEventListener('submit', (event) => {
        event.preventDefault();
        const typedText = event.target.text.value;

        PubSub.publish('FormView: text-submitted', typedText);
    })
}

module.exports = FormView;
