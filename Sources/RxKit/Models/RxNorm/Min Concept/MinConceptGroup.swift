/// Constructed from https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getAllConceptsByStatus.html

public struct MinConceptGroupWrapper: Codable {
    public struct MinConceptGroup: Codable {
        /// RxNorm concept
        public let conceptProperties: [MinConcept]?
    }

    public let minConceptGroup: MinConceptGroup
}
