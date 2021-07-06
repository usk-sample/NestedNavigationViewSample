//
//  SecondView.swift
//  NestedNavigationViewSample
//
//  Created by Yusuke Hasegawa on 2021/07/06.
//

import SwiftUI

struct SecondView: View {
    
    @Binding var showDetail: Bool
    @Binding var name: String
    
    var body: some View {
        VStack {
            Text("Hello, Second!")

            Button("next") {
                self.name = "Second"
                self.showDetail = true
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(showDetail: .constant(false), name: .constant(""))
    }
}
