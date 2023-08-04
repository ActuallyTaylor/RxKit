/// A group containing ``ConceptGroup``s
/// Constructed from https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getDrugs.html

public struct DrugGroupWrapper: Codable {
    public struct DrugGroup: Codable {
        /// Always empty
        public let name: String?
        /// Related concepts having a certain TTY
        public let conceptGroup: [ConceptGroup]
    }

    public let drugGroup: DrugGroup
}

