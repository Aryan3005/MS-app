//
//  library .swift
//  MUSIC APP
//
//  Created by Aryan Gupta on 19/02/23.
//

import Foundation
import SwiftUI
struct lib: View {
    var body: some View {
        NavigationView(){
            
      
                
                
                ZStack{
                    LinearGradient(colors: [Color(red:7/225 , green:1/255, blue:76/255),Color(red:3/255 , green:3/255 ,blue:3/255)], startPoint: .top, endPoint: .bottom)
                    //Color(red:0.031 , green:0.004, blue:0.3511)
                        .ignoresSafeArea()
                    VStack(alignment: .center){
                        
                        HStack{
                            
                            Text("My Library")
                                .font(.custom("HelveticaNeue",size: 40))
                                .foregroundColor(.white)
                                .padding()
                            
                            
                          
                            Image(systemName:"person")
                                .resizable()
                                .scaledToFit()
                                .frame(width:25)
                                .padding()
                                .foregroundColor(Color.white)
                        }
                        
                       
                        HStack{
                            Spacer()
                            NavigationLink{
                                Discover_pg()
                            }label: {
                                Image("likedsongs")
                                    .padding(.bottom, 0.0)
                            }
                            
                       Spacer()
                            
                            NavigationLink{
                                Discover_pg()
                                
                            }label: {
                                Image("likedsongs")
                                    .padding(.bottom, 0.0)
                                    .foregroundColor(.white)
                            }
                            Spacer()
                            NavigationLink{
                                Discover_pg()
                            }label: {
                                Image("likedsongs")
                                    .padding(.bottom, 0.0)
                            }
                            
                        Spacer()
                        }
                        
                        Spacer()
                        
                        Text("liked songs")
                            .foregroundColor(.white)
                            .font(.custom("Helveticaneue-bold", size: 18))
                        
                        Spacer()
                            Recom_songs(artist_name: "Lil Nas X",listeners: "3.2" , poster_image:"Lilnasx")
                            Recom_songs(artist_name: "The Weekend",listeners: "6.4" , poster_image:"Weeknd")
                            
                        Spacer()
                    
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                    
                    
                
                
                
                
            }
            
            
            
            
        }
        
        
        
        
        
        
    }
    }




struct lib_Previews:PreviewProvider {
    static var previews: some View {
       lib()
    }
}
struct libr_songs:View{
    
    let artist_name:String
    let listeners:String
    let poster_image:String
    
    var body: some View{
        
        
        
        ZStack(alignment: .leading){
            Rectangle()
                .frame(width: 335,height: 132)
                .cornerRadius(30)
                .foregroundColor(Color(red: 32/255, green: 34/255, blue: 93/255))
                VStack(alignment: .leading){
                    Text(artist_name)
                        .foregroundColor(.white)
                        .font(.custom("HelveticaNeue",size: 24))
                    Text(listeners+"M "+"Listeners")
                        .foregroundColor(.gray)
                        .font(.custom("HelveticaNeue",size: 14))
                        ZStack{
                            Rectangle().frame(width: 40,height: 40).cornerRadius(100).foregroundColor(.white)
                            Image(systemName:"play.fill")
                }
            }
                //.frame(width: 100,height: 105)
                .padding()

            Image(poster_image)
                .cornerRadius(20)
                .padding(.leading,205)

            
            
            
            
            
            
        }
        
    }
}
