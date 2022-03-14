//
//  ViewController.swift
//  Coffee_Cast.
//
//  Created by 소범석 on 2022/03/06.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    private lazy var CCLogoView: UIImageView = {
        let imgView = UIImageView()
        imgView.image = .CCLogo
        imgView.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
        imgView.center = view.center
        imgView.backgroundColor = .white
        imgView.contentMode = .scaleAspectFit
       return imgView
    }()
    
    private lazy var PhoneNumber: UITextField = {
        let field = UITextField()
        field.borderStyle = .line
        field.text = "010 - "
        field.font = UIFont.init(name: "HelveticaNeue-Bold", size: 40)
        field.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        field.contentMode = .scaleAspectFit
        field.keyboardType = .numberPad
        return field
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
        
//        PhoneNumber.delegate = self
    }

    
    // MARK: - Helper Function
    private func configure() {
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        view.addSubview(CCLogoView)
        UIViewPropertyAnimator(duration: 1, curve: .linear) {
            self.CCLogoView.frame.origin.y = 50
        }.startAnimation(afterDelay: 1)
        
        let time = DispatchTime.now() + .seconds(2)
        DispatchQueue.main.asyncAfter(deadline: time) { [self] in
            view.addSubview(PhoneNumber)
            PhoneNumber.anchor(top: CCLogoView.bottomAnchor, left: view.leadingAnchor, right: view.trailingAnchor, paddingLeft: 30, paddingRight: 30, width: 200, height: 100)
            PhoneNumber.becomeFirstResponder()
        }
        
    }

}

//extension String {
//    func formatMobileNumber() -> String {
//        let cleanPhoneNumber = components(separatedBy: CharacterSet.decimalDigits.inverted).joined()
//        let mark = "XXX-XXXX-XXXX"
//        var result = ""
//        var startIndex = cleanPhoneNumber.startIndex
//        let endIndex = cleanPhoneNumber.endIndex
//
//        for charct in mark where startIndex < endIndex {
//            if charct == "X" {
//                result.append(cleanPhoneNumber[startIndex])
//                startIndex = cleanPhoneNumber.index(after: startIndex)
//            } else {
//                result.append(charct)
//            }
//        }
//        return result
//    }
    
//    func cleanMobileNumberFormat() -> String {
//        replacingCharacters(in: "-", with: "")
//    }
//}
// let regex = "^01([0|1|6|7|8|9)-?([0-9]{3,4})-?([0-9]{4}$"

//extension String {
//    func applyPatternOnNumbers(pattern: String, replacementCharacter: Character) -> String {
//        var pureNumber = self.replacingOccurrences( of: "[^0-9]", with: "", options: .regularExpression)
//        for index in 0 ..< pattern.count {
//            guard index < pureNumber.count else { return pureNumber }
//            let stringIndex = String.Index(utf16Offset: index, in: pattern)
//            let patternCharacter = pattern[stringIndex]
//            guard patternCharacter != replacementCharacter else { continue }
//            pureNumber.insert(patternCharacter, at: stringIndex)
//        }
//        return pureNumber
//    }
//}
//
//extension ViewController: UITextFieldDelegate {
//    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
////        if Int(string) == nil {
////            return false
////        } else {
////
////        }
////        guard let text = textField.text else { return false }
////        PhoneNumber.text = text.formatMobileNumber()(pattern: "### - #### - ####", replacementCharacter: "#")
////        return true
//    }
//}
