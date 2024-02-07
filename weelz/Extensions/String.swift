//
//  String.swift
//  weelz
//
//  Created by Samy Mehdid on 6/2/2024.
//

import Foundation

extension String {
    public func applyMask(in mask: String) -> String {
        var result = ""
        var index = self.startIndex
        
        for character in mask where index < self.endIndex {
            if character == "x" {
                result.append(self[index])
                index = self.index(after: index)
            } else {
                result.append(character)
            }
        }
        
        return result
    }
    
    public var isValidPhone: Bool {
        let regex = try! NSRegularExpression(pattern: "^(0?)([567])[0-9]{8}$", options: .caseInsensitive)
        return regex.firstMatch(in: self, options: [], range: NSRange(location: 0, length: count)) != nil
    }
}
