import Foundation

extension Array where Element == String {
    func toCommaDelimited() -> String? {
        if self.isEmpty {
            return nil
        }
        return self.joined(separator: ",")
    }

    func toSpaceSeparated() -> String? {
        if self.isEmpty {
            return nil
        }
        return self.joined(separator: " ")
    }
}

extension Array where Element == ConceptStatus {
    func toCommaDelimited() -> String? {
        let array = self.compactMap({$0.rawValue})
        return array.joined(separator: ",")
    }

    func toSpaceSeparated() -> String? {
        let array = self.compactMap({$0.rawValue})
        return array.joined(separator: " ")
    }
}

extension Array where Element == TTY {
    func toCommaDelimited() -> String? {
        let array = self.compactMap({$0.rawValue})
        return array.joined(separator: ",")
    }

    func toSpaceSeparated() -> String? {
        let array = self.compactMap({$0.rawValue})
        return array.joined(separator: " ")
    }
}

extension Array where Element == NDCStatus {
    func toCommaDelimited() -> String? {
        let array = self.compactMap({$0.rawValue})
        return array.joined(separator: ",")
    }

    func toSpaceSeparated() -> String? {
        let array = self.compactMap({$0.rawValue})
        return array.joined(separator: " ")
    }
}

extension Array where Element == PropCategory {
    func toCommaDelimited() -> String? {
        let array = self.compactMap({$0.rawValue})
        return array.joined(separator: ",")
    }

    func toSpaceSeparated() -> String? {
        let array = self.compactMap({$0.rawValue})
        return array.joined(separator: " ")
    }
}
