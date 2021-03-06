//
//  UILabel Glue.swift
//  GlueKit
//
//  Created by Károly Lőrentey on 2017-04-23.
//  Copyright © 2017. Károly Lőrentey. All rights reserved.
//

#if os(iOS)
import UIKit

extension UILabel {
    public override var glue: GlueForUILabel {
        return _glue()
    }
}

public class GlueForUILabel: GlueForNSObject {
    private var object: UILabel { return owner as! UILabel }

    public lazy var text: DependentValue<String?> = DependentValue { [unowned self] in self.object.text = $0 }
    public lazy var textColor: DependentValue<UIColor> = DependentValue { [unowned self] in self.object.textColor = $0 }
    public lazy var font: DependentValue<UIFont> = DependentValue { [unowned self] in self.object.font = $0 }
    public lazy var textAlignment: DependentValue<NSTextAlignment> = DependentValue { [unowned self] in self.object.textAlignment = $0 }
    public lazy var lineBreakMode: DependentValue<NSLineBreakMode> = DependentValue { [unowned self] in self.object.lineBreakMode = $0 }
}
#endif
