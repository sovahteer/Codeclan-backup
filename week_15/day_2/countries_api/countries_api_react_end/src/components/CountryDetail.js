import React from 'react';

const CountryDetail = (props) => {
  if (!props.country) return null;
  return (
    <React.Fragment>
      <h3>{props.country.name}</h3>
      <p>Capital: {props.country.capital}</p>
      <p>Population: {props.country.population}</p>
    </React.Fragment>

  );
}

export default CountryDetail;
