//
//  ContentView.swift
//  AAAA
//
//  Created by minsone on 2020/10/15.
//

import SwiftUI

struct ContentView: View {
    @State var toggle = false
    var body: some View {
        ZStack {
            AnyView(toggle: $toggle, delay: 0)
            AnyView(toggle: $toggle, delay: 0.01)
            AnyView(toggle: $toggle, delay: 0.02)
            AnyView(toggle: $toggle, delay: 0.03)
            AnyView(toggle: $toggle, delay: 0.04)
            AnyView(toggle: $toggle, delay: 0.05)
            AnyView(toggle: $toggle, delay: 0.06)
//            AnyView(toggle: $toggle, delay: 0.2)
//            AnyView(toggle: $toggle, delay: 0.25)
//            AnyView(toggle: $toggle, delay: 0.3)
        }
    }
}

struct AnyView: View {
    @Binding var toggle: Bool
    let delay: Double
    var body: some View {
        Rectangle()
            .frame(width: 80, height: 80)
            .cornerRadius(toggle ? 0 : 100/2)
            .offset(x: toggle ? 150 : -150, y: 0)
            .foregroundColor(toggle ? .black : .pink)
            .opacity(0.1)
            //            .rotationEffect(Angle.degrees(toggle ? 100 : 0))
            //            .animation(Animation.easeInOut(duration: 3))
            .animation(Animation.easeIn(duration: 0.5).delay(delay))
            .onTapGesture(perform: {
                toggle.toggle()
            })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
