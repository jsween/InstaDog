//
//  SettingsEditTextView.swift
//  InstaDog
//
//  Created by Jonathan Sweeney on 7/3/21.
//

import SwiftUI

struct SettingsEditTextView: View {
    
    @State var submissionText: String = ""
    @State var title: String
    @State var description: String
    @State var placeholder: String
    
    var body: some View {
        VStack {
            HStack {
                Text(description)
                Spacer(minLength: 0)
            }
            
            TextField(placeholder, text: $submissionText)
                .padding()
                .frame(height: 60)
                .frame(maxWidth: .infinity)
                .background(Color.MyTheme.beigeColor)
                .foregroundColor(Color.MyTheme.purpleColor)
                .cornerRadius(12)
                .font(.headline)
                .autocapitalization(.sentences)
            Button {
                
            } label: {
                Text("SAVE")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding()
                    .frame(height: 60)
                    .frame(maxWidth: .infinity)
                    .background(Color.MyTheme.purpleColor)
                    .cornerRadius(12)
            }
            .accentColor(Color.MyTheme.yellowColor)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .navigationBarTitle(title)
    }
}

struct SettingsEditTextView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView {
            SettingsEditTextView(title: "Test Title", description: "Test description", placeholder: "Test Placeholder")
        }
    }
}
