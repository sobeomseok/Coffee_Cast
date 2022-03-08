//
//  extension.swift
//  Coffee_Cast.
//
//  Created by 소범석 on 2022/03/06.
//

import UIKit

//MARK: - 색깔 확장
extension UIColor {
    static let color1 = UIColor(displayP3Red: 176, green: 176, blue: 176, alpha: 1)
    static let color2 = UIColor(displayP3Red: 255, green: 36, blue: 65, alpha: 1)
    static let color3 = UIColor(displayP3Red: 255, green: 255, blue: 255, alpha: 1)
    static let color4 = UIColor(displayP3Red: 161, green: 74, blue: 85, alpha: 1)
    static let color5 = UIColor(displayP3Red: 204, green: 204, blue: 204, alpha: 1)
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
