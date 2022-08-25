//
//  MovieModel.swift
//  movieList
//
//  Created by Sumaya Buzlouf on 24/08/2022.
//

import Foundation

struct MovieModel: Identifiable{
    let id = UUID()
    var movieName: String
    var movieact: [String]
}

var myMovies = [
    MovieModel(movieName: "cars", movieact: ["mcqueen", "mater", "sally"]),
    MovieModel(movieName: "cars 2", movieact: ["mcqueen", "mater", "sally"]),
    MovieModel(movieName: "cars 3", movieact: ["mcqueen", "mater", "sally"])
]
