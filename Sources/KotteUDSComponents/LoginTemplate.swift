//
//  SwiftUIView.swift
//  KotteUDSComponents
//
//  Created by Reddanna Kotte on 21/09/25.
//

import SwiftUI

struct TextFieldViewModifiers: ViewModifier {
    
    let backgroundColor: Color
   // let foregroundColor: Color
    let cornerRadius: CGFloat
    let height: CGFloat
    
    func body(content: Content) -> some View {
        content
            .padding()
            .frame(height:height)
            .background(Color.gray)
            .cornerRadius(cornerRadius)
    }
}

extension View {
    
    func kotteTextField() -> some View {
        return self.modifier(TextFieldViewModifiers(backgroundColor: .gray, cornerRadius: 4.0, height: 45))
    }
}

public struct LoginTemplate: View {
    
    @State var userName: String = ""
    @State var password: String = ""
    
    public init () {}
    
    public var body: some View {
        VStack(spacing:23) {
            TextField("Enter User Name", text: $userName)
                .kotteTextField()
                
            SecureField("Enter Password", text: $password)
                .kotteTextField()
            Button("Login") {
                
            }
            .padding()
            .frame(height:45)
            .background(Color.blue)
            .foregroundColor(.white)
            .font(.headline)
            .cornerRadius(4)
         
        }
        .padding()
    }
}

#Preview {
    LoginTemplate()
}
