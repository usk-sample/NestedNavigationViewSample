//
//  ContentView.swift
//  NestedNavigationViewSample
//
//  Created by Yusuke Hasegawa on 2021/07/06.
//

import SwiftUI

struct ContentView: View {
    
    @State var selection = 0
    @State var showDetail = false
    @State var name: String = ""
    
    var body: some View {
      
        TabView(selection: $selection) {
            FirstView(showDetail: self.$showDetail, name: self.$name)
                .tabItem { Label("First", systemImage: "cloud.fill") }
                .tag(1)
            SecondView(showDetail: self.$showDetail, name: self.$name)
                .tabItem { Label("Second", systemImage: "moon.fill") }
                .tag(2)
        }.sheet(isPresented: self.$showDetail) {
            DetailView(name: self.$name)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
