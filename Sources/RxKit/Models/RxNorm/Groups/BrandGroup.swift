/// Constructed from https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getMultiIngredBrand.html

public struct BrandGroup: Codable {
    public struct IngredientList: Codable {
        /// (Always empty)
        public let rxnormId: [String?]?
    }
    
    /// Always empty
    public let ingredientList: IngredientList
    /// Related concepts having a certain TTY
    public let conceptProperties: [ConceptGroup]
    
    public init(from decoder: Decoder) throws {
        let anonymousContainer = try decoder.container(keyedBy: AnonymousCodingKeys.self)
        let internalContainer = try anonymousContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .brandGroup)
        
        self.ingredientList = try internalContainer.decode(IngredientList.self, forKey: CodingKeys.ingredientList)
        self.conceptProperties = try internalContainer.decode([ConceptGroup].self, forKey: CodingKeys.conceptProperties)
    }
    
    // MARK: Coding Keys
    enum AnonymousCodingKeys: CodingKey {
        case brandGroup
    }
    
    enum CodingKeys: CodingKey {
        case ingredientList
        case conceptProperties
    }

}
