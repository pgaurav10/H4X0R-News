//
//  ContentView.swift
//  H4X0R News
//
//  Created by Gaurav Patil on 1/27/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("H4X0R NEWS")
        }
        .onAppear(perform: self.networkManager.fetchData)
    }
}

#Preview {
    ContentView()
}
