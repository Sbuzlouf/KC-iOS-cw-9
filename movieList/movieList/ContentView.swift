//
//  ContentView.swift
//  movieList
//
//  Created by Sumaya Buzlouf on 24/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(myMovies){ movie in
                    NavigationLink(destination: {
                        MovieInfo(mov: movie)
                    }, label: {
                        RowView(ourMovie: movie.movieName)
                    })
                    }
            }.navigationTitle("Movies")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


