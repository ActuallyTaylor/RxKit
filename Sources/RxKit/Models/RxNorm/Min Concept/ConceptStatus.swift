public enum ConceptStatus: String, CaseIterable {
    /// The concept is in the current RxNorm data set and has a non-suppressed term (SUPPRESS="N" in RXNCONSO) from the RxNorm vocabulary (SAB="RXNORM" in RXNCONSO).
    case active = "active"
    /// The concept is designated as obsolete (SUPRRESS="O" in RXNCONSO) in the current data set. RxNorm has not designated any Active concept as equivalent.
    case obsolete = "obsolete"
    /// The concept has been designated as non-dispensable for lack of a quantity factor (SUPPRESS="E" in RXNCONSO). Related concepts with a quantity factor are returned in the quantifiedConcept element.
    case quantified = "quantified"
    /// The concept was Active or Obsolete at one time, but is not in the RXNCONSO file in the current data set and has been remapped (in RXNATOMARCHIVE) to one or more Active or Obsolete concepts. Those concepts are returned in the remappedConcept element.
    case remapped = "remapped"
    /// The concept satisfies one of the following conditions:
    /// 1. The concept exists in the current data set but has no RxNorm vocabulary terms.
    /// 2. The concept existed in previous monthly versions, but has been removed and is not remapped to any Active or Obsolete concepts.
    case notCurrent = "notcurrent"
    case all = "all"
}
