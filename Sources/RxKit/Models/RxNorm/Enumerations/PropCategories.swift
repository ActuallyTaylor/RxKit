/// https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getPropCategories.html
public enum PropCategory: String, CaseIterable, Codable {
    case attributes = "ATTRIBUTES"
    case codes = "CODES"
    case names = "NAMES"
    case sources = "SOURCES"
    case all = "ALL"
}
