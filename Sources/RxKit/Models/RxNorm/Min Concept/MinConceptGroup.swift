/// Constructed from https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getAllConceptsByStatus.html

public struct MinConceptGroup: Codable {
    /// RxNorm concept
    public let conceptProperties: [MinConcept]?

    public init(from decoder: Decoder) throws {
        let anonymousContainer = try decoder.container(keyedBy: AnonymousCodingKeys.self)
        let internalContainer = try anonymousContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .minConceptGroup)
        
        self.conceptProperties = try internalContainer.decodeIfPresent([MinConcept].self, forKey: CodingKeys.conceptProperties)
    }
    
    // MARK: Coding Keys
    enum AnonymousCodingKeys: CodingKey {
        case minConceptGroup
    }
    
    enum CodingKeys: CodingKey {
        case conceptProperties
    }

}
