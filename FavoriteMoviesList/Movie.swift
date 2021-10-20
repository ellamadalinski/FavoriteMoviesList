//
//  Movie.swift
//  FavoriteMoviesList
//
//  Created by ELLA MADALINSKI on 10/19/21.
//

import Foundation

public class Movie{
    
    var name : String
    var yearReleased : Int
    var rating : Double
    var image : String
    var description : String


    init(n : String, y : Int, r : Double, i : String, d : String){
        name = n
        yearReleased = y
        rating = r
        image = i
        description = d
    }
    
}
