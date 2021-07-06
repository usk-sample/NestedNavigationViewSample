//
//  FirstView.swift
//  NestedNavigationViewSample
//
//  Created by Yusuke Hasegawa on 2021/07/06.
//

import SwiftUI

struct FirstView: View {
        
    @Binding var showDetail: Bool
    @Binding var name: String
    
    var body: some View {
        
        VStack {
            Text("Hello, First!")
            
            Button("next") {
                self.name = "First"
                self.showDetail = true
            }
            
            NavigationLink.init("Navigation", destination: DetailView.init(name: .constant("Navigation")))
                                            
        }

    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView(showDetail: .constant(false), name: .constant(""))
    }
}
