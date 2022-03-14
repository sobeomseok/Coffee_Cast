//
//  extension.swift
//  Coffee_Cast.
//
//  Created by 소범석 on 2022/03/06.
//

import UIKit

// MARK: - 로고 이미지
extension UIImage {
    static let CCLogo: UIImage = #imageLiteral(resourceName: "CCLogo")
    
}


//MARK: - 색깔 확장
extension UIColor {
    static let CCGray = UIColor(displayP3Red: 176.0/255.0, green: 176.0/255.0, blue: 176.0/255.0, alpha: 1)
    static let CCRed = UIColor(displayP3Red: 255.0/255.0, green: 36.0/255.0, blue: 65.0/255.0, alpha: 1)
    static let CCWhite = UIColor(displayP3Red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1)
    static let CCBurgundy = UIColor(displayP3Red: 161.0/255.0, green: 74.0/255.0, blue: 85.0/255.0, alpha: 1)
    static let CCLightGray = UIColor(displayP3Red: 204.0/255.0, green: 204.0/255.0, blue: 204.0/255.0, alpha: 1)
}

//MARK: - 오토레이아웃 확장
extension UIView {
    func anchor(top: NSLayoutYAxisAnchor? = nil, left: NSLayoutXAxisAnchor? = nil, bottom: NSLayoutYAxisAnchor? = nil, right: NSLayoutXAxisAnchor? = nil, paddingTop: CGFloat = 0, paddingLeft: CGFloat = 0, paddingBottom: CGFloat = 0, paddingRight: CGFloat = 0, width: CGFloat? = nil, height: CGFloat? = nil) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        
        if let left = left {
            leadingAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom).isActive = true
        }
        
        if let right = right {
            trailingAnchor.constraint(equalTo: right, constant: -paddingRight).isActive = true
        }
        
        if let width = width {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        if let height = height {
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
    
    func centerX(inView view: UIView) {
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    func centerY(inView view: UIView, constant: CGFloat = 0) {
        centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: constant).isActive = true
    }
    
    /// 서브뷰 한 번에 추가하는 함수
    func addSubViews(_ views: UIView...) {
        views.forEach {
            addSubview($0)
        }
    }
}
