# KotteUDSComponents

# Installation

to install this package, import url here..

## Usage example

'''Swift
import SwiftUI

struct TextFieldViewModifiers: ViewModifier {
    
    let backgroundColor: Color
    let foregroundColor: Color
    let cornerRadius: CGFloat
    let height: CGFloat
    
    func body(content: Content) -> some View {
        content
            .background(backgroundColor)
            .foregroundColor(foregroundColor)
            .frame(height: height)
            .cornerRadius(cornerRadius)
            .padding()
    }
}

extension View {
    
    func kotteTextField() -> some View {
        return self.modifier(TextFieldViewModifiers(backgroundColor: Color.gray, foregroundColor: .blue, cornerRadius: 8.0, height: 50.0))
    }
}


public struct KotteTextFields: View {
    
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
            .frame(height: 46)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8.0)
            .padding()
            
        }
    }  
}

'''
