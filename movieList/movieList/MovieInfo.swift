//
//  MovieInfo.swift
//  movieList
//
//  Created by Sumaya Buzlouf on 24/08/2022.
//

import SwiftUI

struct MovieInfo: View {
    
    var mov : MovieModel
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.7)
                .ignoresSafeArea()
            
            Image(mov.movieName)
                .blur(radius: 20)
                .ignoresSafeArea()
            
            VStack{
                Image(mov.movieName)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 250, height: 250)
                
                Text(mov.movieName)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                ScrollView(.horizontal){
                    HStack{
                        ForEach(mov.movieact, id: \.self){ act in
                            VStack{
                                Text(act)
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .font(.system(size: 25))
                                
                                Image(act)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 200, height: 200)
                            }
                        }
                    }
                }.frame(width: 500, height: 400)
            }
        }
    }
}

struct MovieInfo_Previews: PreviewProvider {
    static var previews: some View {
        MovieInfo(mov: MovieModel(movieName: "cars", movieact: [""]))
    }
}
