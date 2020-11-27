const kEmailRegex =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
const kPasswordRegex =
    r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d][\w~@#$%^&*+=`|{}:;!.?\"()\[\]-]{7,}$';

const kBaseURL = "https://api.themoviedb.org/3/movie/";
const kImageBaseURL = "https://image.tmdb.org/t/p/w200";
const kAPIKey = "b110ece4de4ab7fee86d41cdad01500f";

const kPopularMoviesURL = "${kBaseURL}popular";
