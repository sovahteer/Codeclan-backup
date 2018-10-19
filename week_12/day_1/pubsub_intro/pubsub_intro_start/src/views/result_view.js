const PubSub = require ('../helpers/pub_sub');

const ResultView = function(){

}

ResultView.prototype.displayResult = function(wordCount) {
    const resultElement = document.querySelector("#result");
    resultElement.textContent = `You entered ${wordCount} words`

}

ResultView.prototype.bindEvents = function(){
    PubSub.subscribe('WordCounter:result-calculated', (event) => {
        const numberOfWords = event.detail;
        this.displayResult(numberOfWords);

    });    
}

module.exports = ResultView;
