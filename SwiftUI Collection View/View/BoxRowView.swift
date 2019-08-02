//
//  BoxRowView.swift
//  SwiftUI Collection View
//
//  Created by Dmitry Novosyolov on 02/08/2019.
//  Copyright © 2019 Dmitry Novosyolov. All rights reserved.
//

import SwiftUI

struct BoxRowView: View {
    private var boxes = Box.all()
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
            HStack(spacing: 15) {
                ForEach(boxes, id: \.id) { box in
                    BoxView(box: box)
                }
            }
            .padding([.top, .leading], 7.0)
        }
    }
}

#if DEBUG
struct BoxRowView_Previews: PreviewProvider {
    static var previews: some View {
        BoxRowView()
    }
}
#endif
