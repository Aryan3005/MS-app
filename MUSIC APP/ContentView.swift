//
//  ContentView.swift
//  MUSIC APP
//
//  Created by Aryan Gupta on 16/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color.black.opacity(0.9).edgesIgnoringSafeArea(.all)
                VStack{
                    Spacer()

                    
                    Image("Logo-1")
                    Spacer()
                    
                    Text("MUSIC")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        
                    Text("STREAMING")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    Spacer()

                        NavigationLink{
                            Discover_pg().navigationBarBackButtonHidden()
                        }label: {
                            Text("NEXT")
                                .frame(width: 250 , height: 50)
                                .foregroundColor(.black)
                                .font(.title2)
                                .fontWeight(.heavy)
                                .background(RadialGradient(colors: [Color(red: 0.64, green: 0.31, blue: 1),.black], center: .center, startRadius: 100 ,endRadius: 500))
                                .cornerRadius(100)
                            
                        }

                    Spacer()
                                        }
                
            }
            
            
            
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
