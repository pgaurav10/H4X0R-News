//
//  WebView.swift
//  H4X0R News
//
//  Created by Gaurav Patil on 1/27/24.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {

    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeUrl = urlString {
            if let url = URL(string: safeUrl) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
        
        
    }
}
