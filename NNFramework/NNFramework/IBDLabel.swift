//
//  IBDLabel.swift
//  IBDesignableFramework
//
//  Created by Nazifa Najish on 10/01/19.
//  Copyright © 2019 Nazifa Najish. All rights reserved.
//


import UIKit


@IBDesignable open class IBDLabel: UILabel {
    
    @IBInspectable var verticalPad: CGFloat = 0 { // Padding for top, bottom
        didSet {
            refreshPaddings(horizontal: horizontalPad, vertical: verticalPad)
        }
    }
    
    @IBInspectable var horizontalPad: CGFloat = 0 { // Padding for Left, Right
        didSet {
            refreshPaddings(horizontal: horizontalPad, vertical: verticalPad)
        }
    }
    
    func setup () {
        clipsToBounds = true
        textAlignment = .center
        //refreshCorners(value: roundCornerRadius)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override open func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        setup()
    }
    
    
    override open func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setup()
    }
    override open var intrinsicContentSize: CGSize {
        let superSize = super.intrinsicContentSize
        let newWidth = superSize.width + (2*horizontalPad)
        let newHeight = superSize.height + (2*verticalPad)
        let newSize = CGSize(width: newWidth, height: newHeight)
        return newSize
    }
    
    // MARK: Refreshes value of Properties i.e. corner radius, horizontal/vertical paddings
    
    func refreshCorners(value: CGFloat) {
        layer.cornerRadius = value
    }
    
    func refreshPaddings(horizontal: CGFloat, vertical: CGFloat){
        let superSize = super.intrinsicContentSize
        let newWidth = superSize.width + (2*horizontalPad)
        let newHeight = superSize.height + (2*verticalPad)
        let newSize = CGSize(width: newWidth, height: newHeight)
        bounds.size = newSize
    }
    
}

//
@IBDesignable
extension UIView
{
    @IBInspectable
    public var cornerRadius: CGFloat {
        set (radius) {
            self.layer.cornerRadius = radius
            self.layer.masksToBounds = radius > 0
        }
        get {
            return self.layer.cornerRadius
        }
    }
}

