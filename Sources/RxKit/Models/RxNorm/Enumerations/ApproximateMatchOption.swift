/// https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getApproximateMatch.html

public enum ApproximateMatchOption: Int, Codable {
    /// Find atoms in Current concepts
    case current = 0
    /// Find atoms in Active concepts
    case active = 1
}
