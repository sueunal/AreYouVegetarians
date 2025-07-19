//
//  ContentView.swift
//  AreYouVegetarians
//
//  Created by soom on 7/17/25.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    @State private var greeting: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("이름을 입력하세요", text: $name)
                .accessibilityIdentifier("NameTextField")
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button("인사하기") {
                greeting = "안녕하세요, \(name)!"
            }
            .accessibilityIdentifier("GreetButton")

            if !greeting.isEmpty {
                Text(greeting)
                    .accessibilityIdentifier("GreetingText")
            }
        }
        .padding()
    }
}


#Preview {
    ContentView()
}
