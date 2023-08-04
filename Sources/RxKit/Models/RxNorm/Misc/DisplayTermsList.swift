/// https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getDisplayTerms.html

public struct DisplayTermsList: Codable {
    /// Concept name
    public let term: [String]
    
    public init(from decoder: Decoder) throws {
        let anonymousContainer = try decoder.container(keyedBy: AnonymousCodingKeys.self)
        let internalContainer = try anonymousContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .displayTermsList)
        
        self.term = try internalContainer.decode([String].self, forKey: CodingKeys.term)
    }
    
    // MARK: Coding Keys
    enum AnonymousCodingKeys: CodingKey {
        case displayTermsList
    }
    
    enum CodingKeys: CodingKey {
        case term
    }
}
