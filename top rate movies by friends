let data = require('../test/data.json');

export default class MoviesAnalyzer {
    constructor(movies, users) {
        this.movies = movies;
        this.users = users;
    };

    
    topRatedMoviesAmongFriends(userId) {
        // TODO: Implement
      /*
      fetch users and movies*/
    let users = data.users;
    let movies = data.movies;
      
    //fetch friends list of users
    let friendList = [];
    users.forEach(element =>{
        if(element.userId == userId){
            friendList = element.friends;
            
        }
    });
    //copy movie data in usermovies

    let userMovies = movies;
    userMovies.forEach(userMovie => {
        
        delete userMovie['favorites'];
        delete userMovie['duration'];
        delete userMovie['actors'];
        delete userMovie['watchlist'];
        let friendCount = 0;
        let ratingSum = 0;
        let ratingObj = userMovie.ratings;
        ratingObj.forEach(rating =>{
            
            if (friendList.includes(rating.userId)){
                ratingSum += parseInt(rating.rating);
                friendCount ++;
            }

        });
        
        if (friendCount != 0){
        userMovie['average'] = ratingSum/friendCount;
        }
        else
        userMovie['average'] = 0;
       

    });

    userMovies.sort((a, b) => {
        if(b.average == a.average){
            return a.title > b.title ? 1 : -1;;
        }
        return b.average - a.average;

    }
    );
    
    
    userMovies.forEach(userMovie =>{
        delete userMovie['ratings'];
        delete userMovie['average'];
    });
    
    let finalArray = userMovies.slice(0,3);
   
    let returnValue =[];
    finalArray.forEach(element =>{
    returnValue.push(element.title);
    });
    console.log(returnValue);

        return returnValue;
    }

}
