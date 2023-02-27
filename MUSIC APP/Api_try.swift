//
//  Api_try.swift
//  MUSIC APP
//
//  Created by Kaival Patel on 21/02/2023.
//

import SwiftUI

struct Api: View {
    @State var users : [FeedResponse]=[]
    
    var body: some View {
        HStack{
            List(users ,id: \.count) { user in
                ForEach(user.entries ,id: \.id) { i in
                    HStack{
                        Text(i.API)
                    }
                }
            }
        }.onAppear(perform: fetchUsers)
    }
    func fetchUsers() {
            let url = URL(string: "https://api.publicapis.org/entries")!
            
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let data=data{
                    do{
                        let decodedResponse = try JSONDecoder().decode(FeedResponse.self, from: data)
                        users=[decodedResponse]
                        print(decodedResponse.entries)
                        
                    }catch{
                        print(error)
                    }
                }
            }.resume()
        }
    }


struct FeedResponse: Codable ,Identifiable{
    let id = UUID()
    let count: Int
    let entries:[Entires]
}


struct Entires: Codable,Identifiable{
    let id = UUID()
    let API: String
    let Description: String
}




struct Previews_Api_try_Previews: PreviewProvider {
    static var previews: some View {
        Api()
    }
}

