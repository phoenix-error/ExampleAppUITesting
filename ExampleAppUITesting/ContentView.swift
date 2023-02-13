//
//  ContentView.swift
//  ExampleAppUITesting
//
//  Created by Luca Becker on 13.02.23.
//

import SwiftUI

struct ContentView: View {
    @State private var email = ""
    @State private var password = ""

    var body: some View {
        VStack {
            Spacer()
            
            Image(systemName: "lock.shield")
                .font(.system(size: 100, weight: .medium))
                .padding()

            TextField("Email", text: $email)
                .accessibilityIdentifier("emailTextField")
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8.0)
                .padding(.horizontal)

            SecureField("Password", text: $password)
                .accessibilityIdentifier("passwordTextField")
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8.0)
                .padding(.horizontal)

            Button("Login") {
                // Perform login action
            }
            .accessibilityIdentifier("loginButton")
            .padding()
            .foregroundColor(.white)
            .background(Color(.systemBlue))
            .cornerRadius(8.0)
            .padding(.horizontal)

            Spacer()
        }
        .navigationTitle("Login")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
