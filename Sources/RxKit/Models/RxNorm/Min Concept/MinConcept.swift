/// Constructed from https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getAllConceptsByStatus.html

public struct MinConcept: Codable {
    /// Term type
    public let tty: String
    /// Concept name from SAB=RXNORM
    public let rxcui: String
    /// Concept name
    public let name: String
    
}
