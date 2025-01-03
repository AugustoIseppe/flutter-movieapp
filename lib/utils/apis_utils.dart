class API {
  static String requestImg(String img) =>
      'https://image.tmdb.org/t/p/w500/$img';

  static String requestProducts() => "http://localhost:3000/products";

  static const requestMoviesList = 'list/1?page=1';
}
