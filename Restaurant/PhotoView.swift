//
//  PhotoView.swift
//  Restaurant
//
//  Created by Rafael dos Santos Varela on 13.02.25.
//

import SwiftUI

struct PhotoView: View {
    
    @Binding var selectedImage: String
    @Binding var sheetVisible: Bool
    
    var body: some View {
        
        ZStack {
            
            Image(selectedImage)
                .resizable()
                .aspectRatio(contentMode:.fit)
            VStack {
                
                HStack  {
                    
                    Button (){
                        sheetVisible = false
                    } label: {
                        Image(systemName: "chevron.backward")
                            .foregroundColor(.blue).scaleEffect(2)
                    }.padding([.top, .leading],25)
                    Spacer()
                }
               
                Spacer()
            }
            
        }
        
        
    }
}

#Preview {
    PhotoView(selectedImage: Binding.constant("gallery1"),
              sheetVisible: Binding.constant(true))
}
