//
//  GalleryView.swift
//  Restaurant
//
//  Created by Rafael dos Santos Varela on 10.02.25.
//

import SwiftUI

struct GalleryView: View {
    
    @State var photoData = [String]()
    
    @State var sheetVisible = false
    
    @State var selectedImage = ""
    
    var dataService = DataService()
    
    
    
    var body: some View {
        VStack (alignment:.leading) {
            
            Text("Gallery")
                .font(.largeTitle).bold()
            
            GeometryReader { proxy in
                
                ScrollView (showsIndicators: false){
                    LazyVGrid(columns: [GridItem(spacing: 10),
                                        GridItem(spacing: 10),
                                        GridItem(spacing: 10)], spacing:10)
                    {
                        ForEach(photoData, id: \.self) { photo in
                            
                            Image(photo)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth: (proxy.size.width-20)/3)
                                .clipped()
                                .onTapGesture {
                                    selectedImage = photo
                                    sheetVisible = true}
                                
                            
                            
                            
                        }
                    }
                }
            }
            
               
        }.padding(.horizontal).onAppear {
                photoData = dataService.getPhotos()
            }
        .sheet(isPresented: $sheetVisible) {
            PhotoView(selectedImage: $selectedImage,
                      sheetVisible: $sheetVisible)
        }
            
        }
    
    
    
}


#Preview {
    GalleryView()
}
