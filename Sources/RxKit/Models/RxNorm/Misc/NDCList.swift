/// Constructed from https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getAllNDCsByStatus.html

public struct NDCListWrapper: Codable {
    public struct NDCList: Codable {
        /// National Drug Code (NDC) in CMS 11-digit format
        public let ndc: [String]
    }
    
    public let ndcList: NDCList
}
