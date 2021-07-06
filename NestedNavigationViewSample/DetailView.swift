//
//  DetailView.swift
//  NestedNavigationViewSample
//
//  Created by Yusuke Hasegawa on 2021/07/06.
//

import SwiftUI

struct DetailView: View {
    
    @Binding var name: String
    
    var body: some View {
        VStack {
            Text("Hello, Detail!")
            Text("from \(name)")
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(name: .constant("tmp"))
    }
}
