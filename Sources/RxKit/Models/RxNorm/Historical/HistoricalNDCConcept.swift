/// https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getAllHistoricalNDCs.html
public struct HistoricalNDCConceptWrapper: Codable {
    public struct HistoricalNDCConcept: Codable {
        /// One NDC's association to the RxNorm concept
        public let historicalNdcTime: [HistoricalNDCTime]
    }
    
    public let historicalNdcConcept: HistoricalNDCConcept
}
