console.log('app loaded', window);

document.addEventListener('DOMContentLoaded', () => {

    const title = document.querySelector('h1');
    const welcomePara = document.querySelector('#welcome-paragraph');
    title.textContent = 'JavaScript (app.js) says, Hello World!';
    welcomePara.textContent = 'be-ay-en-ay-en-ay-es';

    console.dir(welcomePara);

    const redListItem = document.querySelector('li.red');
    redListItem.classList.add('bold');

    const newListItem = document.createElement('li');
    newListItem.textContent = 'Purple';
    newListItem.classList.add('purple');
    
    const list = document.querySelector('ul');

    list.appendChild(newListItem);

})
