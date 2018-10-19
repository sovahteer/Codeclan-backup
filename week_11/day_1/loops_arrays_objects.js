var movie = {
    title: 'It\'s A Wonderful Life',
    year: 1946,
    language: "Spanish"
};

console.log('movie name:', movie.title);
movie.cast = ['James Stewart', 'Donna Reed'];
console.log('movie', movie);
movie.language = "English";
console.log('movie', movie);
movie['language'] = 'French';
console.log('movie', movie);

var propertyToAccess = 'subtitle-language';
movie[propertyToAccess] = 'German';

console.log('movie subtitle language: ', movie['subtitle-language']);
delete movie.year;
console.log('movie', movie);

movie.ratings = {
    critic: 94,
    audience: 95
}

var audienceRating = movie.ratings.audience;
console.log('audience rating: ', audienceRating);

for (var key in movie){
    var value = movie[key];
    console.log(`The ${key} is ${value}`)
}

var keys = Object.keys(movie)
console.log("keys", keys);