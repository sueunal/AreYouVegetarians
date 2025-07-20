//
//  LoginView.swift
//  AreYouVegetarians
//
//  Created by soom on 7/20/25.
//

import SwiftUI

struct LoginView: View {
    @State private var id: String = ""
    @State private var pw: String = ""
    var body: some View {
        VStack {
            
            Spacer()
                .frame(height: 50)
            
            Text("Login")
                .fontDesign(.monospaced)
                .fontWeight(.semibold)
                .font(.system(size: 32))
                .foregroundStyle(.blue.opacity(0.9))
            
            Spacer()
                .frame(height: 80)
            
            TextField("", text: $id)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .strokeBorder(Color.blue.opacity(0.8), lineWidth: 0.5)
                )
            
            TextField("", text: $pw)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .strokeBorder(Color.blue.opacity(0.8), lineWidth: 0.5)
                )
            Button {
                
            } label: {
                Text("Cornfirm")
                    .padding()
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .foregroundStyle(.blue.opacity(0.6))
                    )
            }
            
            Spacer()
            
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    LoginView()
}
