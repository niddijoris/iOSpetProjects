//
//  WelcomePage.swift
//  OnboardingFlow
//
//  Created by Sirojiddin Kuzmonboev on 17/10/24.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 150, height: 150)
                    .foregroundStyle(.tint)
                
                Image(systemName: "figure.2.and.child.holdinghands")
                    .font(.system(size: 70))
                    .foregroundStyle(.white)
            }
            
            
            Text("Welcome to MyApp")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.top)
                .fontDesign(.monospaced)
                
            
            Text("Description text")
                .font(.title2)
               
        }
       
        .padding()
        
    }
}

#Preview {
    WelcomePage()
}
