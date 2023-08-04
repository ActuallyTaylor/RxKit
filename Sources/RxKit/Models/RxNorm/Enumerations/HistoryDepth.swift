///  Depth of history to retrieve
public enum HistoryDepth: Int, CaseIterable {
    /// NDCs presently directly associated
    case presentlyDirectly = 0
    /// NDCs ever directly associated
    case everDirectly = 1
    /// NDCs ever (in)directly associated
    case ever = 2
}
