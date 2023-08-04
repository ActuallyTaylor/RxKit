/// https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getAllHistoricalNDCs.html
public struct HistoricalNDCConcept: Codable {
    /// One NDC's association to the RxNorm concept
    public let historicalNdcTime: [HistoricalNDCTime]

    
    public init(from decoder: Decoder) throws {
        let anonymousContainer = try decoder.container(keyedBy: AnonymousCodingKeys.self)
        let internalContainer = try anonymousContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .historicalNdcConcept)
        
        self.historicalNdcTime = try internalContainer.decode([HistoricalNDCTime].self, forKey: CodingKeys.historicalNdcTime)
    }
    
    // MARK: Coding Keys
    enum AnonymousCodingKeys: CodingKey {
        case historicalNdcConcept
    }
    
    enum CodingKeys: CodingKey {
        case historicalNdcTime
    }

}
