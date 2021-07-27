//
//  File.swift
//  
//
//  Created by Reza Khonsari on 7/28/21.
//

import UIKit

class FXPageControl: UIView {
    var currentPage: Int!
    var numberOfPages: Int!
    var defersCurrentPageDisplay:Bool!
    var hidesForSinglePage: Bool!
    var wrapEnabled: Bool!
    var vertical: Bool!

    var dotImage: UIImage!
    var dotShape: CGPath!
    var dotSize: CGFloat!
    var dotColor: UIColor!
    var dotShadowColor: UIColor!
    var dotShadowBlur: CGFloat!
    var dotShadowOffset: CGSize!

    var selectedDotImage: UIImage!
    var selectedDotShape: CGPath!
    var selectedDotSize: CGFloat!
    var selectedDotColor: UIColor!
    var selectedDotShadowColor: UIColor!
    var selectedDotShadowBlur: CGFloat!
    var selectedDotShadowOffset: CGSize!

    var dotSpacing: CGFloat!
    
    override func draw(_ rect: CGRect) {
        
    }
    
    func sizeForNumberOfPages(pageCount: Int) -> CGSize {
        let width = dotSize! + (dotSize! + dotSpacing!) * CGFloat(numberOfPages! - 1)
        return vertical ? CGSize(width: dotSize, height: width) : CGSize(width: width, height: dotSize)
        
    }
    
    /*
    - (CGSize)sizeForNumberOfPages:(__unused NSInteger)pageCount
    {
        CGFloat width = _dotSize + (_dotSize + _dotSpacing) * (_numberOfPages - 1);
        return _vertical? CGSizeMake(_dotSize, width): CGSizeMake(width, _dotSize);
    }
     */
    
    override func sizeThatFits(_ size: CGSize) -> CGSize {
        let dotSize = sizeForNumberOfPages(pageCount: numberOfPages)
        return dotSize
    }
    /*
    - (CGSize)sizeThatFits:(__unused CGSize)size
    {
        CGSize dotSize = [self sizeForNumberOfPages:_numberOfPages];
        if (_selectedDotSize)
        {
            CGFloat width = (_selectedDotSize - _dotSize);
            CGFloat height = MAX(36, MAX(_dotSize, _selectedDotSize));
            dotSize.width = _vertical? height: dotSize.width + width;
            dotSize.height = _vertical? dotSize.height + width: height;

        }
        if ((_dotShadowColor && ![_dotShadowColor isEqual:[UIColor clearColor]]) ||
            (_selectedDotShadowColor && ![_selectedDotShadowColor isEqual:[UIColor clearColor]]))
        {
            dotSize.width += MAX(_dotShadowOffset.width, _selectedDotShadowOffset.width) * 2;
            dotSize.height += MAX(_dotShadowOffset.height, _selectedDotShadowOffset.height) * 2;
            dotSize.width += MAX(_dotShadowBlur, _selectedDotShadowBlur) * 2;
            dotSize.height += MAX(_dotShadowBlur, _selectedDotShadowBlur) * 2;
        }
        return dotSize;
    }
    */
}
