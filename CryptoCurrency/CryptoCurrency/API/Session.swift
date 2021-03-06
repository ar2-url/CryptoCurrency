//
//  Session.swift
//  CryptoCurrency
//
//  Created by Artur on 11/07/22.
//

import Foundation

protocol Session {
    func dataTask(url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> Void)
}

extension URLSession: Session {
    
    func dataTask(url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        self.dataTask(with: url) { data, response, error in
            completion(data, response, error)
        }.resume()
    }
    
}
