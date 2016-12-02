//
//  Sample3.swift
//  BuildTimeSample
//
//  Created by Naoto Onagi on 2016/11/29.
//  Copyright © 2016 Naoto Onagi. All rights reserved.
//

import UIKit

class Sample3 {

    var view1: UIView?
    var view2: UIView?

    func lateMethod(size: CGSize) -> CGSize {
        return CGSize(
            width: size.width
                + (view1?.bounds.width ?? 0)
                + (view2?.bounds.width ?? 0)
                + 10,
            height: size.height)
    }

    func fastMethod(size: CGSize) -> CGSize {
        let view1Width: CGFloat = view1?.bounds.width ?? 0
        let view2Width: CGFloat = view2?.bounds.width ?? 0
        let newWidth: CGFloat = size.width + view1Width + view2Width + 10
        return CGSize(width: newWidth, height: size.height)
    }
}
