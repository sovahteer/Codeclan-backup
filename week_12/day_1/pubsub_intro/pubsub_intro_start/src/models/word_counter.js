const PubSub = require('../helpers/pub_sub')
const WordCounter = function(){

}

WordCounter.prototype.countWords = function (text){
    const words = text.split(' ');
    return words.length;
}

WordCounter.prototype.bindEvents = function(){
    PubSub.subscribe('FormView: text-submitted', (event) => {
        const typedText = event.detail;
        const numberOfWords = this.countWords(typedText);
        PubSub.publish('WordCounter: result-calculated', numberOfWords);
    });

}

module.exports = WordCounter;