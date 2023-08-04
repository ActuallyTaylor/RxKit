/// https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getAllHistoricalNDCs.html
public struct HistoricalNDCTime: Codable {
    /// "direct" = NDC is associated with the subject RxCUI. "indirect" = NDC was inherited through remapping
    public let status: HistoricalNDCTimeStatus
    /// RxCUI of concept to which the NDCs are or were directly associated
    public let rxcui: String
    /// NDC and period of association
    public let ndcTime: [NDCTime]?
}
