//
//  DetailView.swift
//  H4X0R News
//
//  Created by Gaurav Patil on 1/27/24.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "www.google.com")
}


