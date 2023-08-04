public enum HistoricalNDCTimeStatus: String, Codable {
    /// NDC is associated with the subject RxCUI.
    case direct = "direct"
    /// NDC was inherited through remapping.
    case indirect = "indirect"
}
