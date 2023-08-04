/// Constructed from https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getAllNDCsByStatus.html

public enum NDCStatus: String, Codable {
    /// Linked by RXNORM to an active concept
    case active = "active"
    /// Previously linked by RXNORM
    case obsolete = "obsolete"
    /// Found only in a non-RXNORM vocabulary
    case alien = "alien"
    /// Any status
    case all = "all"
}
