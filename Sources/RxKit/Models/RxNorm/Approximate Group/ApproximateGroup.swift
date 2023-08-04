/// https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getApproximateMatch.html

public struct ApproximateGroup: Codable {
    public let inputTerm: String?
    public let candidate: [ApproximateGroupCandidate]

    public init(from decoder: Decoder) throws {
        let anonymousContainer = try decoder.container(keyedBy: AnonymousCodingKeys.self)
        let internalContainer = try anonymousContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .approximateGroup)
        
        self.inputTerm = try internalContainer.decodeIfPresent(String.self, forKey: CodingKeys.inputTerm)
        self.candidate = try internalContainer.decode([ApproximateGroupCandidate].self, forKey: CodingKeys.candidate)
    }
    
    // MARK: Coding Keys
    enum AnonymousCodingKeys: CodingKey {
        case approximateGroup
    }
    
    enum CodingKeys: CodingKey {
        case inputTerm
        case candidate
    }
}

