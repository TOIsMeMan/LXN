//
//  Issue16ViewModel.swift
//  LXN
//
//  Created by Macbook on 18/8/26.
//

import Foundation
typealias Completion = (Bool,String) -> Void
class Issue16ViewModel {
    var names: [String] = []
        
    func loadAPI(completion: @escaping Completion) {
            let URLString = "https://rss.itunes.apple.com/api/v1/us/itunes-music/hot-tracks/all/100/explicit.json"
            let URL = URL(string: URLString)
            let request = URLRequest(url: URL!)
    }
}
