/// https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getIdTypes.html

public struct IDTypeList: Codable {
    /// Concept name
    public let idName: [String]
    
    public init(from decoder: Decoder) throws {
        let anonymousContainer = try decoder.container(keyedBy: AnonymousCodingKeys.self)
        let internalContainer = try anonymousContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .idTypeList)
        
        self.idName = try internalContainer.decode([String].self, forKey: CodingKeys.idName)
    }
    
    // MARK: Coding Keys
    enum AnonymousCodingKeys: CodingKey {
        case idTypeList
    }
    
    enum CodingKeys: CodingKey {
        case idName
    }
}
