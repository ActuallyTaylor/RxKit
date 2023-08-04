/// Constructed from https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getAllProperties.html

public struct PropConcept: Codable {
    /// RxNav category that includes the property
    public let propCategory: PropCategory
    /// Property name
    public let propName: String
    /// Value of the property
    public let propValue: String
}
