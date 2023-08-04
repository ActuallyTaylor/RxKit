/// Constructed from https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getNDCProperties.html

public struct NDCProperty: Codable {
    /// National Drug Code (NDC) in CMS 11-digit format
    public let ndcItem: String
    /// 2-segment NDC
    public let ndc9: String
    /// 3-segment NDC
    public let ndc10: String
    /// RxNorm identifier
    public let rxcui: String
    /// SPL Set Identifier
    public let splSetIdItem: String
    /// Packaging List
    public let packagingList: PackagingList
    /// List of properties
    public let propertyConceptList: PropertyConceptList
    /// Source of properties
    public let source: String
}
