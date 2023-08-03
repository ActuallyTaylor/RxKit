import Foundation

extension [String] {
    func toCommaDelimited() -> String? {
        if self.isEmpty {
            return nil
        }
        return self.joined(separator: ",")
    }
}
