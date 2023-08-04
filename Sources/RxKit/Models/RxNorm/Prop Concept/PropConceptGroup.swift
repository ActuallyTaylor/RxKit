/// Constructed from https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getAllProperties.html

public struct PropConceptGroup: Codable {
    /// One property name and value. Repeated for additional values
    public let propConcept: [PropConcept]

    public init(from decoder: Decoder) throws {
        let anonymousContainer = try decoder.container(keyedBy: AnonymousCodingKeys.self)
        let internalContainer = try anonymousContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .propConceptGroup)
        
        self.propConcept = try internalContainer.decode([PropConcept].self, forKey: CodingKeys.propConcept)
    }
    
    // MARK: Coding Keys
    enum AnonymousCodingKeys: CodingKey {
        case propConceptGroup
    }
    
    enum CodingKeys: CodingKey {
        case propConcept
    }

}
