import "jquery-bar-rating";
import $ from 'jquery';

const initStarRating = () => {
  $('#review_pokemon_rating').barrating({
    theme: 'css-stars'
  });
  $('#review_user_rating').barrating({
    theme: 'css-stars'
  });
};

export { initStarRating };