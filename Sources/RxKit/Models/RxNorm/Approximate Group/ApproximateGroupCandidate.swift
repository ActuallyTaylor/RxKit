public struct ApproximateGroupCandidate: Codable {
    /// RxNorm identifier
    public let rxcui: String
    /// RxNorm RXAUI (string identifier) that matches
    public let rxaui: String
    /// Match score (higher is better, among a given set of results)
    public let score: String
    /// 1 for all best matches,
    /// 2 for all second-best matches, etc.
    public let rank: String
    /// RxNorm concept name
    public let name: String?
    /// Source vocabulary
    public let source: String
}
