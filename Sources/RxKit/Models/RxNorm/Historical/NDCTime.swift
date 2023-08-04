/// https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getAllHistoricalNDCs.html
public struct NDCTime: Codable {
    /// (array of 1)National Drug Code (NDC) in CMS 11-digit format
    public let ndc: [String]
    /// The first RxNorm release where the NDC was active for this concept. Format is YYYYMM
    public let startDate: String
    /// the last RxNorm release where the NDC was active for this concept. Format is YYYYMM
    public let endDate: String
}
