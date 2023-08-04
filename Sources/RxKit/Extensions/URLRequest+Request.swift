//
//  URLRequest+Request.swift
//  NPSApi
//
//  Created by Taylor Lineman on 6/12/23.
//

import Foundation

extension URLRequest {
    init<Model>(url: URL, request: Request<Model>) {
        self.init(url: url, timeoutInterval: 30)

        httpMethod = request.method.httpMethod
    }
}

extension URLComponents {
    init?<Model>(baseURL: String, request: Request<Model>, key: String) {
        guard let baseURL = URL(string: baseURL) else { return nil }
        guard let completeURL = URL(string: request.path, relativeTo: baseURL) else { return nil }
        self.init(url: completeURL, resolvingAgainstBaseURL: true)
        
        path = request.path
        queryItems = request.method.payload.urlQueryItems
        queryItems?.append(URLQueryItem(name: "api_key", value: key))
    }
    
    init?<Model>(baseURL: String, request: Request<Model>) {
        guard let baseURL = URL(string: baseURL) else { return
            nil
        }
        guard let completeURL = URL(string: request.path, relativeTo: baseURL) else { return nil }
        self.init(url: completeURL, resolvingAgainstBaseURL: true)
        
        path = request.path
        queryItems = request.method.payload.urlQueryItems
    }

}
