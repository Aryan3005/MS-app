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
                        
                        Text("Liked Songs")
                            
                            .foregroundColor(.gray)
                            .font(.custom("Helveticaneue-bold", size: 18))
                            .padding(.trailing, 250.0)
                        
                        Spacer()
                        ScrollView{
                            libr_songs(artist_name: "Lil Nas X",song_name: "Fucking star boy" , poster_image:"Lilnasx")
                            
                            libr_songs(artist_name: "The Weekend ",song_name:"Closer" , poster_image:"Weeknd")
                            libr_songs(artist_name: "Lil Nas X",song_name: "Fucking star boy" , poster_image:"Lilnasx")
                            
                            libr_songs(artist_name: "The Weekend ",song_name:"Closer" , poster_image:"Weeknd")
                            libr_songs(artist_name: "Lil Nas X",song_name: "Fucking star boy" , poster_image:"Lilnasx")
                            
                            libr_songs(artist_name: "The Weekend ",song_name:"Closer" , poster_image:"Weeknd")
                            libr_songs(artist_name: "Lil Nas X",song_name: "Fucking star boy" , poster_image:"Lilnasx")
                            
                            libr_songs(artist_name: "The Weekend ",song_name:"Closer" , poster_image:"Weeknd")
                            libr_songs(artist_name: "Lil Nas X",song_name: "Fucking star boy" , poster_image:"Lilnasx")
                           
                            libr_songs(artist_name: "The Weekend ",song_name:"Closer" , poster_image:"Weeknd")
                            
                            
                        }
                        Spacer()
                    
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                    Buttom_navbar().padding(.top,UIScreen.main.bounds.height-200)
            }
            
          
            
        }
        
    
        
    }
    }




struct lib_Previews:PreviewProvider {
    static var previews: some View {
       lib()
    }
}

struct Bottom_navbar:View{
    var body: some View{
        HStack{
           
            Image("Music_icon").padding(20)
            Image("Libary_icon").padding(20)
            Image("Search_icon").padding(20)
        }
        .frame(width: 232,height: 88)
            .background(BlurView(style: .systemUltraThinMaterial))
            .cornerRadius(40)

    }
}

struct libr_songs:View{
    
    let artist_name:String
    let song_name:String
    let poster_image:String
    
    var body: some View{
        
        
        
        ZStack(alignment: .leading){
                Rectangle()
                .frame(width:.infinity,height: 80)
                .cornerRadius(30)
                .foregroundColor(Color(red: 32/255, green: 34/255, blue: 93/255))
                HStack{
                    VStack(alignment:.leading){
                        Text(artist_name)
                            .foregroundColor(.white)
                            .font(.custom("HelveticaNeue",size: 20))
                            .padding(.leading, 100.0)
                        
                        Text(song_name)
                            .foregroundColor(Color.gray)
                            .padding(.leading,100)
                            
                        
                    }
                        
                }
                    //.frame(width: 100,height: 105)
                    .padding()

                Image(poster_image)
                    .resizable()
                    .frame(width:80,height: 80)
                    .cornerRadius(24)
                    
                    

            
        }
    }
}
struct BluprView: UIViewRepresentable {
    let style: UIBlurEffect.Style
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: style))
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {}
}
