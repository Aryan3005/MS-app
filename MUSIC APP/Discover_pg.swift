//
//  P.swift
//  MUSIC APP
//
//  Created by Aryan Gupta on 16/02/23.
//

import SwiftUI
struct Discover_pg: View {
    var body: some View {
        
        ZStack{
            LinearGradient(colors: [Color(red:7/225 , green:1/255, blue:76/255),Color(red:3/255 , green:3/255 ,blue:3/255)], startPoint: .top, endPoint: .bottom)
            //Color(red:0.031 , green:0.004, blue:0.3511)
                .ignoresSafeArea()
            VStack{
                HStack{
                    
                    Text("Discover")
                        .font(.custom("HelveticaNeue",size: 40))
                        .foregroundColor(.white)
                        .padding()
                       
                    
                    Spacer()
                    Image(systemName:"person")
                        .resizable()
                        .scaledToFit()
                        .frame(width:25)
                        .padding()
                        .foregroundColor(Color.white)
                    
                                        }

                ScrollView{
                    Text("Recommended for you")
                        .font(.custom("HelveticaNeue", size: 16))
                        .foregroundColor(Color.gray)
                        .frame(width: 185 ,height: 24 , alignment: .leading)
                        .padding(.top,24)
                        .padding(.leading,UIScreen.main.bounds.width-555)
                        .padding(.bottom,16)
                    Recom_songs(artist_name: "Lil Nas X",listeners: "3.2" , poster_image:"Lilnasx")
                    Recom_songs(artist_name: "The Weekend",listeners: "6.4" , poster_image:"Weeknd")
                    
                    Text("Artist")
                        .font(.custom("HelveticaNeue", size: 16))
                        .foregroundColor(Color.gray)
                        .frame(width: 185 ,height: 24 , alignment: .leading)
                        .padding(.top,24)
                        .padding(.leading,UIScreen.main.bounds.width-555)
                        .padding(.bottom,16)
                    ScrollView(.horizontal){
                        HStack{
                            Artist_view(artist_name: "Lil Nas X",poster_image:"Lilnasx")
                            Artist_view(artist_name: "The Weekend", poster_image:"Weeknd")
                            Artist_view(artist_name: "Lil Nas X",poster_image:"Lilnasx")
                            Artist_view(artist_name: "The Weekend", poster_image:"Weeknd")
                            Artist_view(artist_name: "Lil Nas X",poster_image:"Lilnasx")
                            Artist_view(artist_name: "The Weekend", poster_image:"Weeknd")
                            Artist_view(artist_name: "Lil Nas X",poster_image:"Lilnasx")
                            Artist_view(artist_name: "The Weekend", poster_image:"Weeknd")
                            Artist_view(artist_name: "Lil Nas X",poster_image:"Lilnasx")
                        }
                    }
                    Text("Today's hit")
                        .font(.custom("HelveticaNeue", size: 16))
                        .foregroundColor(Color.gray)
                        .frame(width: 185 ,height: 24 , alignment: .leading)
                        .padding(.top,24)
                        .padding(.leading,UIScreen.main.bounds.width-555)
 
                    ScrollView(.horizontal){
                        HStack{
                            Common_view(artist_name: "Lil Nas X",poster_image:"Lilnasx")
                            Common_view(artist_name: "The Weekend", poster_image:"Weeknd")
                            Common_view(artist_name: "Lil Nas X",poster_image:"Lilnasx")
                            Common_view(artist_name: "The Weekend", poster_image:"Weeknd")
                            Common_view(artist_name: "Lil Nas X",poster_image:"Lilnasx")
                            Common_view(artist_name: "The Weekend", poster_image:"Weeknd")
                            Common_view(artist_name: "Lil Nas X",poster_image:"Lilnasx")
                            Common_view(artist_name: "The Weekend", poster_image:"Weeknd")
                            Common_view(artist_name: "Lil Nas X",poster_image:"Lilnasx")
                        }
                    }
                    
                    Text("Today's hit")
                        .font(.custom("HelveticaNeue", size: 16))
                        .foregroundColor(Color.gray)
                        .frame(width: 185 ,height: 24 , alignment: .leading)
                        .padding(.top,24)
                        .padding(.leading,UIScreen.main.bounds.width-555)
 
                    ScrollView(.horizontal){
                        HStack{
                            Common_view(artist_name: "Lil Nas X",poster_image:"Lilnasx")
                            Common_view(artist_name: "The Weekend", poster_image:"Weeknd")
                            Common_view(artist_name: "Lil Nas X",poster_image:"Lilnasx")
                            Common_view(artist_name: "The Weekend", poster_image:"Weeknd")
                            Common_view(artist_name: "Lil Nas X",poster_image:"Lilnasx")
                            Common_view(artist_name: "The Weekend", poster_image:"Weeknd")
                            Common_view(artist_name: "Lil Nas X",poster_image:"Lilnasx")
                            Common_view(artist_name: "The Weekend", poster_image:"Weeknd")
                            Common_view(artist_name: "Lil Nas X",poster_image:"Lilnasx")
                        }
                    }
                    
                    

                }
                Spacer()

            }
            Buttom_navbar().padding(.top,UIScreen.main.bounds.height-200)
        }
        
        }
        
            
    }




struct Discover_pg_Previews: PreviewProvider {
    static var previews: some View {
        Discover_pg()
    }
}

struct Buttom_navbar:View{
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


struct Recom_songs:View{
    
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


struct Artist_view: View{
    
    let artist_name:String
    let poster_image:String
    
    var body: some View{
        VStack{
            Image(poster_image)
                .resizable()
                .frame(width: 80,height: 80)
                .cornerRadius(50)
            Text(artist_name).foregroundColor(.white).font(.custom("HelveticaNeue",size: 14))
            
        }.frame(width: 86, height: 109)
    }
}

struct BlurView: UIViewRepresentable {
    let style: UIBlurEffect.Style
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: style))
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {}
}

struct Common_view:View{
    let artist_name:String
    let poster_image:String
    
    var body: some View{
        VStack{
            Image(poster_image)
                .resizable()
                .frame(width: 120,height: 120)
                .cornerRadius(20)
            Text(artist_name).foregroundColor(.white).font(.custom("HelveticaNeue",size: 14))
            
        }.frame(width: 120, height: 175)
    }
}