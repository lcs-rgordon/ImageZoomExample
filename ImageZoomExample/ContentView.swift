//
//  ContentView.swift
//  ImageZoomExample
//
//  Created by Russell Gordon on 2022-02-24.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    
    // Controls whether the image is zoomed in or not
    @State var zoomed = false
    
    // MARK: Computed properties
    var body: some View {
        
//        Image("orange-flowers")
//            .resizable()
//            // Same as ".scaledToFit()"
//            .aspectRatio(contentMode: .fit)
        
//        Image("orange-flowers")
//            .resizable()
//            // Same as ".scaledToFill()"
//            .aspectRatio(contentMode: .fill)
        
        Image("orange-flowers")
            .resizable()
            // When zoomed == true, zoom in
            .aspectRatio(contentMode: zoomed ? .fill : .fit)
            // Change (toggle) zoom mode when tapped
            .onTapGesture {
                withAnimation {
                    zoomed.toggle()
                }
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
