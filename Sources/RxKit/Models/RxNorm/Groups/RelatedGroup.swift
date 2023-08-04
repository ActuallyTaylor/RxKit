/// Constructed From https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getAllRelatedInfo.html

public struct AllRelatedGroups: Codable {
    public let rxcui: String?
    public let conceptGroup: [ConceptGroup]

    public init(from decoder: Decoder) throws {
        let anonymousContainer = try decoder.container(keyedBy: AnonymousCodingKeys.self)
        let internalContainer = try anonymousContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .allRelatedGroup)
        
        self.rxcui = try internalContainer.decodeIfPresent(String.self, forKey: CodingKeys.rxcui)
        self.conceptGroup =  try internalContainer.decode([ConceptGroup].self, forKey: CodingKeys.conceptGroup)
    }
    
    // MARK: Coding Keys
    enum AnonymousCodingKeys: CodingKey {
        case allRelatedGroup
    }
    
    enum CodingKeys: CodingKey {
        case rxcui
        case conceptGroup
    }

}
