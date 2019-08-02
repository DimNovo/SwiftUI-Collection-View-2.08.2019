//
//  BoxView.swift
//  SwiftUI Collection View
//
//  Created by Dmitry Novosyolov on 02/08/2019.
//  Copyright © 2019 Dmitry Novosyolov. All rights reserved.
//

import SwiftUI

struct BoxView: View {
    var box: Box
    @State private var tapped = false
    var body: some View {
        VStack {
            Image(self.box.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .cornerRadius(tapped ? 52 : 12)
                .shadow(color: .primary, radius: 5)
                .scaleEffect(tapped ? 0.5 : 1)
                .rotation3DEffect(Angle(degrees: self.tapped ? 360 * 2 : 0),
                                  axis: (x: self.tapped ? CGFloat.random(in: (1.0...100.0)) : 0.0,
                                         y: self.tapped ? CGFloat.random(in: (1.0...100.0)) : 0.0,
                                         z: self.tapped ? CGFloat.random(in: (1.0...100.0)) : 0.0))
                .onTapGesture { withAnimation(.spring()) {self.tapped.toggle()}}
            
            Text(box.title)
                .font(.subheadline)
                .foregroundColor(tapped ? .primary : .secondary)
                .bold()
                .shadow(color: .secondary, radius: 3)
        }
    }
}

#if DEBUG
struct BoxView_Previews: PreviewProvider {
    static var previews: some View {
        BoxView(box: Box.all()[0])
    }
}
#endif
