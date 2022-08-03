//
//  SwiftUIView.swift
//  Dicee_SwiftUI
//
//  Created by Donia Elshenawy on 03/08/2022.
//

import SwiftUI

struct SwiftUIView: View {
    @State var leftPhoto = 1
    
    @State var rightPhoto = 1
    
    var body: some View {
        ZStack{
            Color.brown
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                ExtractedView(numPhoto: "images")
                
                Spacer()

                
                HStack{
                    
                    ExtractedView(numPhoto: "\(leftPhoto)")
                    ExtractedView(numPhoto: "\(rightPhoto)")
                       
                    
                    
                }
                
             //   .padding(.horizontal)
                
                Spacer()
                
                Button("Roll") {
                    self.leftPhoto = Int.random(in: 1...6)
                    self.rightPhoto = Int.random(in: 1...6)
                }
                .foregroundColor(.white)
                .background(.red)
                .font(.system(size: 30))
                .padding(.vertical)
               

            }
           
            
                
            
        }
     
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}

struct ExtractedView: View {
    let numPhoto : String
    
    var body: some View {
        Image(numPhoto)
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .frame(width: 150, height: 140, alignment: .top)
            
        
    }
}
