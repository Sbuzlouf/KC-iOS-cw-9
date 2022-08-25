//
//  RowView.swift
//  movieList
//
//  Created by Sumaya Buzlouf on 24/08/2022.
//

import SwiftUI

struct RowView: View {
    
    @State var ourMovie : String
    
    var body: some View {
        HStack{
            Image(ourMovie)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 180, height: 180)
            
            Text(ourMovie)
                .font(.system(size: 25))
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(ourMovie: "")
    }
}
