//
//  SplashView.swift
//  Zenith
//
//  Created by Saffanah Aljawi on 05/04/1446 AH.
//

import SwiftUI

struct SplashView: View {
    
    @State var isActive: Bool = false
    
    var body: some View {
        ZStack {
            if self.isActive {
                Main()
            } else {
                
                Image("zenith")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
        
}



#Preview {
    SplashView()
}

