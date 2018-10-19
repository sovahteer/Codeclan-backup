const Request = function(url){
    this.url = url;
}

Request.prototype.get = function(onComplete){
    const xhr = new XMLHttpRequest();
    xhr.addEventListener('load', () => {
      if (xhr.status !== 200){
        return;
    }
    // console.log(xhr.responseText);
    const jsonString = xhr.responseText;
    const data = JSON.parse(jsonString);
    onComplete(data);
  })

  xhr.open('GET', this.url);
  xhr.setRequestHeader('Accept', 'application/json');
  xhr.send();


}

module.exports = Request;