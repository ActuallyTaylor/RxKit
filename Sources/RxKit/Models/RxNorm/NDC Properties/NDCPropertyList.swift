/// Constructed from https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getNDCProperties.html

public struct NDCPropertyList: Codable {
    /// Concept name
    public let ndcProperty: [NDCProperty]
    
    public init(from decoder: Decoder) throws {
        let anonymousContainer = try decoder.container(keyedBy: AnonymousCodingKeys.self)
        if anonymousContainer.contains(AnonymousCodingKeys.ndcPropertyList) {
            let internalContainer = try anonymousContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .ndcPropertyList)
            
            self.ndcProperty = try internalContainer.decode([NDCProperty].self, forKey: CodingKeys.ndcProperty)
        } else {
            self.ndcProperty = []
        }
    }
    
    // MARK: Coding Keys
    enum AnonymousCodingKeys: CodingKey {
        case ndcPropertyList
    }
    
    enum CodingKeys: CodingKey {
        case ndcProperty
    }
}
