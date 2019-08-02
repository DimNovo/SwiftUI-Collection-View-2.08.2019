//
//  Box.swift
//  SwiftUI Collection View
//
//  Created by Dmitry Novosyolov on 02/08/2019.
//  Copyright © 2019 Dmitry Novosyolov. All rights reserved.
//

import Foundation

struct Box: Hashable {
    var id = UUID()
    let title, imageURL: String
}

extension Box {
    static func all() -> [Box] {
        return [
            Box(id: .init(), title: "Good stuff", imageURL: "0"),
            Box(id: .init(), title: "Tech stuff", imageURL: "1"),
            Box(id: .init(), title: "Code stuff", imageURL: "2"),
            Box(id: .init(), title: "Photo stuff", imageURL: "3"),
            Box(id: .init(), title: "SwiftUI stuff", imageURL: "4"),
            Box(id: .init(), title: "iPhone stuff", imageURL: "5"),
            Box(id: .init(), title: "Best stuff", imageURL: "6"),
            Box(id: .init(), title: "Nice stuff", imageURL: "7")
        ]
    }
}
