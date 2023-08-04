/// Constructed from https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getNDCProperties.html

public struct PropertyConcept: Codable {
    /// Property name
    public let propName: String
    /// Value of the property
    public let propValue: String
}

public struct PropertyConceptList: Codable {
    public let propertyConcept: [PropertyConcept]
}
