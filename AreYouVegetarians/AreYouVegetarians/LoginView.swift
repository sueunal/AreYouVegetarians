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
    @State private var isLoading: Bool = false
    @State private var isLoggined: Bool = false
    var body: some View {
        ZStack {
            if isLoading {
                LoadingView(isLoading: $isLoading)
                    .ignoresSafeArea()
            }
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
                    isLoading = true
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                       isLoading = false
                        isLoggined = true
                    }
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
        .navigationDestination(isPresented: $isLoggined ) {
            ContentView()
                .navigationBarBackButtonHidden(true)
        }
    }
}


struct LoadingView: View {
    @Binding var isLoading: Bool
    var body: some View {
        ZStack {
            Color.black.opacity(0.3)
            ProgressView()
        }
    }
}

#Preview {
    NavigationStack {
        LoginView()
    }
}
