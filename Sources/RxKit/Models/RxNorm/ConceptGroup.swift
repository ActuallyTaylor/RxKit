/// Related concepts having a certain TTY and a list of ``ConceptProperty``s
/// Constructed from https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getDrugs.html

public struct ConceptGroup: Codable {
    /// Term type of the concepts in this group
    public let tty: String
    /// Related concept
    public let conceptProperties: [ConceptProperty]?
}
