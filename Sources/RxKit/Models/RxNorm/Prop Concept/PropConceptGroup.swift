/// Constructed from https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getAllProperties.html

public struct PropConceptGroupWrapper: Codable {
    public struct PropConceptGroup: Codable {
        /// One property name and value. Repeated for additional values
        public let propConcept: [PropConcept]
    }
    
    /// Collection of properties
    public let propConceptGroup: PropConceptGroup
}
