//
//  ViewModel.swift
//  AreYouVegetarians
//
//  Created by soom on 7/19/25.
//

import SwiftUI


class HelloViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var greeting: String = ""
    
    func greet() {
        greeting = "안녕하세요, \(name)!"
    }
}
