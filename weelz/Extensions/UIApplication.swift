//
//  UIApplication.swift
//  weelz
//
//  Created by Samy Mehdid on 6/2/2024.
//

import UIKit

extension UIApplication {
    static func call(phoneCode: String = "213", phone: String) {
        guard let url = URL(string: "tel://+\(phoneCode)\(phone)") else { return }
        
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
    
    static func openSettings() {
        UIApplication.shared.open(URL(string: UIApplication.openSettingsURLString)!)
    }
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
