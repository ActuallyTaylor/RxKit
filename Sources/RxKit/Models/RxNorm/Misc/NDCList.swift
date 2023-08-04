/// Constructed from https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getAllNDCsByStatus.html

public struct NDCList: Codable {
    /// National Drug Code (NDC) in CMS 11-digit format
    public let ndc: [String]
    
    public init(from decoder: Decoder) throws {
        let anonymousContainer = try decoder.container(keyedBy: AnonymousCodingKeys.self)
        let internalContainer = try anonymousContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .ndcList)
        
        self.ndc = try internalContainer.decode([String].self, forKey: CodingKeys.ndc)
    }
    
    // MARK: Coding Keys
    enum AnonymousCodingKeys: CodingKey {
        case ndcList
    }
    
    enum CodingKeys: CodingKey {
        case ndc
    }
}
