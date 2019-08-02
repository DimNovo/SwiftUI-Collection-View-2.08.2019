//
//  ContentView.swift
//  SwiftUI Collection View
//
//  Created by Dmitry Novosyolov on 02/08/2019.
//  Copyright © 2019 Dmitry Novosyolov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Divider()
                BoxRowView()
                BoxRowView()
                BoxRowView()
                BoxRowView()
                Divider()
            }
            .navigationBarTitle("Collection View")
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
