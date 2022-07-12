//
//  ApiRequest.swift
//  CryptoCurrency
//
//  Created by Artur on 11/07/22.
//

import Foundation

struct ApiRequest {
    
    let baseUrl: String
    let path: String

    func getUrl()-> URL? {
        let urlComponents = URLComponents(string: baseUrl.appending(path))
        return urlComponents?.url
    }
    
}
