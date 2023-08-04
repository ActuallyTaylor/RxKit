/// Constructed From https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getAllRelatedInfo.html

public struct AllRelatedGroupsWrapper: Codable {
    public struct RelatedGroup: Codable {
        public let rxcui: String?
        public let conceptGroup: [ConceptGroup]
    }

    public let allRelatedGroup: RelatedGroup
}
