//
//  SwiftUIView.swift
//  KotteUDSComponents
//
//  Created by Reddanna Kotte on 21/09/25.
//

import SwiftUI

struct TextFieldViewModifiers: ViewModifier {
    
    let backgroundColor: Color
    let foregroundColor: Color
    let cornerRadius: CGFloat
    let height: CGFloat
    
    func body(content: Content) -> some View {
        content
            .frame(height: height)
            .background(backgroundColor)
            .foregroundColor(foregroundColor)
            .cornerRadius(cornerRadius)
        
    }
}

extension View {
    
    func kotteTextField(height: CGFloat = 50) -> some View {
        return self.modifier(TextFieldViewModifiers(backgroundColor: Color.gray, foregroundColor: .blue, cornerRadius: 4.0, height: height))
    }
}


public struct KotteTextFields: View {
    
    @State var userName: String = ""
    @State var password: String = ""
    
    public init () {}
    
    public var body: some View {
        VStack(spacing:10) {
            TextField("Enter User Name", text: $userName)
                .kotteTextField()
                .frame(height:60)
                
            SecureField("Enter Password", text: $password)
                .kotteTextField()
                .frame(height:50)
            Button("Login") {
                
            }
            .padding()
            .frame(height: 46)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(4.0)
        }
        .padding()
    }
}

#Preview {
    KotteTextFields()
}
