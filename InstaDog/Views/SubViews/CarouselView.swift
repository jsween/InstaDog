//
//  CarouselView.swift
//  InstaDog
//
//  Created by Jonathan Sweeney on 6/30/21.
//

import SwiftUI

struct CarouselView: View {
    
    @State private var selection: Int = 0
    @State private var timerAdded: Bool = false
    let maxCount: Int = 7
    
    var body: some View {
        TabView(selection: $selection) {
            ForEach(1..<maxCount+1) { i in
                Image("dog\(i)")
                    .resizable()
                    .scaledToFill()
                    .tag(i)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .frame(height: 300)
        .animation(.default)
        .onAppear {
            if !timerAdded {
                addTimer()
            }
        }
    }
    
    // MARK: - METHODS
    func addTimer() {
        timerAdded = true
        Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { (timer) in
            selection = selection <= maxCount ? selection + 1 : 1
        }
    }
    
}

struct CarouselView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselView()
            .previewLayout(.sizeThatFits)
    }
}
