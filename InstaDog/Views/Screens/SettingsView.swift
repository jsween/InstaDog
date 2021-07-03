//
//  SettingsView.swift
//  InstaDog
//
//  Created by Jonathan Sweeney on 7/3/21.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                // MARK: - Section 1: InstaDog
                
                GroupBox(label: SettingsLabelView(labelText: "InstaDog", labelImage: "dot.radiowaves.left.and.right")) {
                    HStack(alignment: .center, spacing: 10) {
                        Image("logo.transparent")
                            .resizable()
                            .scaledToFit()
                            .background(Color.MyTheme.yellowColor)
                            .frame(width: 80, height: 80, alignment: .center)
                            .cornerRadius(12)
                        Text("InstaDog is the world's premier app for sharing your dog's pictures")
                    }
                }
                .padding()
                
                // MARK: - Section 2: Profile
                
                GroupBox(label: SettingsLabelView(labelText: "Profile", labelImage: "person.fill")) {
                    
                    
                    NavigationLink(destination: SettingsEditTextView(submissionText: "CurrentDisplayName", title: "Display Name", description: "Edit your display name, as seen by other users and your posts.", placeholder: "Your Display Name")) {
                        SettingsRowView(leftIcon: "pencil", text: "Display Name", color: Color.MyTheme.purpleColor)
                    }
                    NavigationLink(destination: SettingsEditTextView(submissionText: "Current Bio is here", title: "Bio", description: "Profile Bio: Share things about yourself to other InstaDog users", placeholder: "Enter Bio")) {
                        SettingsRowView(leftIcon: "text.quote", text: "Bio", color: Color.MyTheme.purpleColor)
                    }
                    SettingsRowView(leftIcon: "pencil", text: "Profile Picture", color: Color.MyTheme.purpleColor)
                    SettingsRowView(leftIcon: "figure.walk", text: "Sign out", color: Color.MyTheme.purpleColor)
                }
                .padding()
                
                // MARK: - Section 3: Application
                
                GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")) {
                    SettingsRowView(leftIcon: "folder.fill", text: "Privacy Policy", color: Color.MyTheme.yellowColor)
                    SettingsRowView(leftIcon: "folder.fill", text: "Terms and Conditions", color: Color.MyTheme.yellowColor)
                    SettingsRowView(leftIcon: "globe", text: "Visit jSween.com", color: Color.MyTheme.yellowColor)
                }
                .padding()
                
                // MARK: - Section 4: Sign Off
                
                GroupBox {
                    Text("InstaDog was made with love.\nAll Rights Reserved \njSween Inc.\nCopyright 2021 🐶")
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity)
                }
                .padding()
                .padding(.bottom, 40)
            }
            .navigationBarTitle("Settings")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(leading:
                                    Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .font(.title)
            })
                                    .accentColor(.primary)
            )
            
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
