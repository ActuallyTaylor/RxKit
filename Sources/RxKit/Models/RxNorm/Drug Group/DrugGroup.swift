/// A group containing ``ConceptGroup``s
/// Constructed from https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getDrugs.html

public struct DrugGroup: Codable {
    /// Always empty
    public let name: String?
    /// Related concepts having a certain TTY
    public let conceptGroup: [ConceptGroup]
    
    public init(from decoder: Decoder) throws {
        let anonymousContainer = try decoder.container(keyedBy: AnonymousCodingKeys.self)
        let internalContainer = try anonymousContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .drugGroup)
        
        self.name = try internalContainer.decodeIfPresent(String.self, forKey: CodingKeys.name)
        self.conceptGroup = try internalContainer.decode([ConceptGroup].self, forKey: CodingKeys.conceptGroup)
    }
    
    // MARK: Coding Keys
    enum AnonymousCodingKeys: CodingKey {
        case drugGroup
    }
    
    enum CodingKeys: CodingKey {
        case name
        case conceptGroup
    }

}

