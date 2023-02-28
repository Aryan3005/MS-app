//
//  P.swift
//  MUSIC APP
//
//  Created by Aryan Gupta on 16/02/23.
//

import SwiftUI

struct Discover_pg: View {
    @State var User_data: [Music_data]=[]

    var body: some View {
        
        ZStack(){
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
                    NavigationLink{
                        lib()
                    }label: {
                        Image(systemName:"person")
                            .resizable()
                            .scaledToFit()
                            .frame(width:25)
                            .padding()
                            .foregroundColor(Color.white)
                    }
                    
                    
                }.onAppear(perform: Fetch_songs_top_50)
                
                ScrollView(){
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
                        //.padding(.bottom,16)
                    ScrollView(.horizontal){
                        HStack{
                            ForEach(User_data ,id: \.id){song in
                                ForEach(song.data , id: \.id) { i in
                                    Artist_view(artist_name: i.title ,poster_image: i.picture)
                                }
                                
                            }
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
                                        ForEach(User_data ,id: \.id){song in
                                            ForEach(song.data , id: \.id) { i in
                                                Artist_view(artist_name: i.title ,poster_image: i.picture)
                                            }
                                        }
                                        
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
                                            ForEach(User_data ,id: \.id){song in
                                                ForEach(song.data , id: \.id) { i in
                                                    Artist_view(artist_name: i.title ,poster_image: i.picture)
                                                }
                                            }
                                        }
                                        
                                    }
                                
                            }
                            Spacer()
                            
                        }
                        Buttom_navbar().padding(.top,UIScreen.main.bounds.height-200)
                    }
                }
 
        
    
    func Fetch_songs_top_50(){
        
        
        let request = URL(string: "https://api.deezer.com/user/2529/playlists")!
        
        
        URLSession.shared.dataTask(with: request ){data , response, error in
            if let data=data{
                do{
                    let decoded_r = try JSONDecoder().decode(Music_data.self, from: data)
                    User_data=[decoded_r]
                    print(decoded_r)
                }catch{
                    print(error)
                }
            }
        }.resume()
        
    }
        
            
    }


struct Music_data: Codable, Identifiable{
    let id = UUID()
    let data : [Data_m]
}

struct Data_m: Codable, Identifiable{
    let id : Int
    let title : String
    let picture : URL
}

struct Discover_pg_Previews: PreviewProvider {
    static var previews: some View {
        Discover_pg()
    }
}

struct Buttom_navbar:View{
    var body: some View{
        HStack{
            NavigationLink{
               Discover_pg()
            }label: {
                Image("Music_icon").padding(20)
            }
            
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
                .frame(width: 345,height: 132)
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
    let poster_image:URL
    
    var body: some View{
        VStack{
            
            AsyncImage(url:poster_image) { image in
                image
                    .resizable()
                    .frame(width: 80,height: 80)
                    .cornerRadius(50)
            } placeholder: {
                ProgressView()
            }
            
            Text(artist_name).foregroundColor(.white).font(.custom("HelveticaNeue",size: 14))
            
        }.frame(width: 86, height: 100)
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
