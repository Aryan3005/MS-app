//
//  Api_try_Spotify.swift
//  MUSIC APP
//
//  Created by Kaival Patel on 26/02/2023.
//

import SwiftUI

struct Api_try_Spotify: View {
    @State var User_data: [Music_data]=[]
    
    var body: some View {
        VStack{
            HStack{
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }.onAppear(perform: Fetch_songs_top_50)
            ScrollView(.horizontal){
                HStack{
                    ForEach(User_data ,id: \.id){song in
                        ForEach(song.data , id: \.id) { i in
                            Artist_view_2(artist_name: i.title ,poster_image: i.picture)
                        }
                    }
                    
                }
            }
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

struct Artist_view_2: View{
    
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
            
            Text(artist_name).foregroundColor(.black).font(.custom("HelveticaNeue",size: 14))
            
        }.frame(width: 86, height: 109)
    }
}

struct Api_try_Spotify_Previews: PreviewProvider {
    static var previews: some View {
        Api_try_Spotify()
    }
}
