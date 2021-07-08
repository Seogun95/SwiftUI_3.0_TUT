//
//  ContentView.swift
//  SwiftUI_3.0_TUT
//
//  Created by Seogun Kim on 2021/07/08.
//

import SwiftUI

struct NewButton: View {
    var body: some View {
        VStack{
            
            Button("Plain", role: .none, action: {})
                .buttonStyle(PlainButtonStyle())
            
            Button("Automatic", role: .none, action: {})
                .buttonStyle(.automatic)
            
            Button("Log out", role: .cancel, action: {})
                .buttonStyle(BorderedButtonStyle())
                .tint(.yellow)
            
            // with controlSize
            Button("Cancel", role: .cancel, action: {})
                .buttonStyle(.borderless)
                .controlSize(.small)
                .tint(.yellow)
            
            Button("Delete", role: .destructive, action: {})
                .buttonStyle(.bordered)
                .controlSize(.regular)
            
            // with controlProminence
            Button(role: .destructive, action: {}, label: {
                Text("Exit").frame(maxWidth: .infinity)
                
            })
                .buttonStyle(.bordered)
                .controlSize(.large)
                .controlProminence(.increased)
            
            //with BorderedShape
            Button(role: .destructive, action: {}, label: {
                Text("Wow shape").frame(maxWidth: .infinity)
            })
                .buttonStyle(BorderedButtonStyle(shape: .capsule))
                .controlSize(.large)
                .controlProminence(.increased)
                .tint(.purple)
        }
    }
}

struct NewButton_Previews: PreviewProvider {
    static var previews: some View {
        NewButton()
    }
}
