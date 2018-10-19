import React from 'react';
import ReactDOM from 'react-dom';

document.addEventListener('DOMContentLoaded', function () {

    const header  = React.createElement('h1', null, 'Hello World');
    const appDiv = document.querySelector('#app');

    ReactDOM.render(
        header,
        appDiv
    );

});
