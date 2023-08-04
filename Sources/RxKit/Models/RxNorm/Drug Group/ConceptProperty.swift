/// Related Concepts that contain information about a drug
/// Constructed from https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getDrugs.html

public struct ConceptProperty: Codable {
    /// RxNorm identifier
    public let rxcui: String
    /// RxNorm concept name
    public let name: String
    /// Short or "Tallman" RxNorm synonym
    public let synonym: String
    /// Term type
    public let tty: String
    /// LAT attribute from RxNorm
    public let language: String
    /// SUPPRESS field from RxNorm
    public let suppress: String
    /// (Always empty)
    public let umlscui: String?
}
