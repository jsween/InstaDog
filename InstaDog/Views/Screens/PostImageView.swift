//
//  PostImageView.swift
//  InstaDog
//
//  Created by Jonathan Sweeney on 7/1/21.
//

import SwiftUI

struct PostImageView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State var captionText: String = ""
    @Binding var imageSelected: UIImage
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            HStack {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .font(.title)
                        .padding()
                        .accentColor(.primary)
                    Spacer()
                }
            }
            ScrollView(.vertical, showsIndicators: false) {
                Image(uiImage: imageSelected)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200, alignment: .center)
                    .cornerRadius(12)
                    .clipped()
                ZStack(alignment: .leading) {
                    if captionText.isEmpty { Text("Enter your caption").padding(.horizontal, 32)}
                    
                    TextField("", text: $captionText)
                        .padding()
                        .frame(height: 100)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity)
                        .background(Color.MyTheme.beigeColor)
                        .cornerRadius(12)
                        .font(.headline)
                        .padding(.horizontal)
                        .opacity(captionText.isEmpty ? 0.2 : 1.0)
                    .autocapitalization(.sentences)
                }
                Button {
                    postPicture()
                } label: {
                    Text("POST")
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding()
                        .frame(height: 100)
                        .frame(maxWidth: .infinity)
                        .background(Color.MyTheme.purpleColor)
                        .cornerRadius(12)
                        .padding(.horizontal)
                }
                .accentColor(Color.MyTheme.yellowColor)
            }
        }
    }
    
    // MARK: - Functions
    
    func postPicture() {
        print("POST PICTURE TO DATABASE HERE...")
    }

}

struct PostImageView_Previews: PreviewProvider {
    @State static var image = UIImage(named: "dog1")!
    static var previews: some View {
        PostImageView(imageSelected: $image)
    }
}
