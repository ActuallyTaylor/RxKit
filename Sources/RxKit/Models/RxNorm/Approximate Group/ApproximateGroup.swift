/// https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getApproximateMatch.html

public struct ApproximateGroupWrapper: Codable {
    public struct ApproximateGroup: Codable {
        public let inputTerm: String?
        public let candidate: [ApproximateGroupCandidate]
    }

    public let approximateGroup: ApproximateGroup
}
