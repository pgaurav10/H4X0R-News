//
//  NetworkManager.swift
//  H4X0R News
//
//  Created by Gaurav Patil on 1/27/24.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]()
    func fetchData() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if let e = error {
                    print(e.localizedDescription)
                    return
                }
                
                if let safeData = data {
                    let decoder = JSONDecoder()
                    do {
                        let result = try decoder.decode(PostData.self, from: safeData)
                        DispatchQueue.main.async {
                            self.posts = result.hits
                        }
                        
                    } catch {
                        print(error)
                    }
                    
                }
            }
            
            task.resume()
        }
    }
}
