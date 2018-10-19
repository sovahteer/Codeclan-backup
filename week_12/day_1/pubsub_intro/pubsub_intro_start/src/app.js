const FormView = require('./views/form_view');
const WordCounter = require('./models/word_counter');
const ResultView = require('./views/result_view');

document.addEventListener('DOMContentLoaded', () => {
  console.log('JavaScript loaded');
  const formView = new FormView();
  formView.bindEvents();
  const wordCounter = new WordCounter();
  wordCounter.bindEvents();
  const resultView = new ResultView();
  resultView.bindEvents();
});
