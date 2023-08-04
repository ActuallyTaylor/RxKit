/// Requests found in the [RxNorm API](https://lhncbc.nlm.nih.gov/RxNav/APIs/RxNormAPIs.html)
public enum RxNorm {
    /// Get the drug products associated with a specified name. The name can be an ingredient, brand name, clinical dose form, branded dose form, clinical drug component, or branded drug component. The following table shows examples of input and the types of drug products returned. See default paths for the paths traveled to get concepts for each term type.
    public static func getDrugs(query: String) -> Request<DrugGroupWrapper> {
        var payload = HTTPSPayload()
        payload.queryItems = [
            .init(name: "name", value: query)
        ]
        return Request(path: "/REST/drugs.json", method: .get(payload))
    }
    
    /// Return concept information for specified status values.
    ///
    /// The returned name and TTY reflect the concept as represented in the current RxNorm. For Remapped-status concepts, the name and TTY come from the atom archive if there is no current source. A TTY is provided only if the name is from the atom archive.
    public static func getAllConceptsByStatus(statuses: [ConceptStatus]) -> Request<MinConceptGroupWrapper> {
        var payload = HTTPSPayload()
        payload.queryItems = [
            .init(name: "status", value: statuses.toSpaceSeparated())
        ]
        
        return Request(path: "/REST/allstatus.json", method: .get(payload))
    }
    
    /// Returns concepts of the term types specified by the tty parameter.
    public static func getAllConceptsByTTY(ttys: [TTY]) -> Request<MinConceptGroupWrapper> {
        var payload = HTTPSPayload()
        payload.queryItems = [
            .init(name: "tty", value: ttys.toSpaceSeparated())
        ]
        
        return Request(path: "/REST/allconcepts.json", method: .get(payload))
    }
    
    /// Get the National Drug Codes (NDCs) for the RxNorm concept identified by rxcui. The history parameter selects NDCs currently associated with the concept (i.e., NDCs present in the current version of RxNorm), NDCs ever associated with the concept, or NDCs ever associated with the concept or any obsolete concept remapped into it.
    ///
    /// The result status element categorizes NDC associations as "direct" or "indirect". NDCs associated by RxNorm with rxcui are categorized as "direct". If history option 2 was requested, NDCs that RxNorm associated with another concept, which subsequently was remapped to rxcui, are also included and are categorized as "indirect".
    ///
    /// For each NDC association, the result indicates by startDate and endDate the first and last releases of RxNorm that indicated the association. NDC associations that are still in effect have an endDate of the current RxNorm release.
    public static func getAllHistoricalNDCs(rxcui: String, depth: HistoryDepth) -> Request<HistoricalNDCConceptWrapper> {
        var payload = HTTPSPayload()
        payload.queryItems = [
            .init(name: "history", value: String(depth.rawValue))
        ]
        
        let rxcui = rxcui.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? rxcui
        return Request(path: "/REST/rxcui/\(rxcui)/allhistoricalndcs.json", method: .get(payload))
    }
    
    /// The resource is a list of National Drug Codes (NDCs) that have appeared in RxNav's data sources. The list is optionally filtered by the status parameter.
    public static func getAllNDCsByStatus(status: [NDCStatus]) -> Request<NDCListWrapper> {
        var payload = HTTPSPayload()
        payload.queryItems = [
            .init(name: "status", value: status.toSpaceSeparated())
        ]
        
        return Request(path: "/REST/allNDCstatus.json", method: .get(payload))
    }
    
    /// For each NDC association, the result indicates by startDate and endDate the first and last releases of RxNorm that indicated the association. NDC associations that are still in effect have an endDate of the current RxNorm release.
    public static func getAllProperties(rxcui: String, props: [PropCategory]) -> Request<PropConceptGroupWrapper> {
        var payload = HTTPSPayload()
        payload.queryItems = [
            .init(name: "prop", value: props.toSpaceSeparated())
        ]
        
        let rxcui = rxcui.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? rxcui
        return Request(path: "/REST/rxcui/\(rxcui)/allProperties.json", method: .get(payload))
    }

    /// Get RxNorm concepts related to the concept identified by rxcui. Related concepts may be of term types "IN", "MIN", "PIN", "BN", "SBD", "SBDC", "SBDF", "SBDG", "SCD", "SCDC", "SCDF", "SCDG", "DF", "DFG", "BPCK" and "GPCK". See default paths for the RxNorm relationship paths traveled to get concepts for each term type.
    /// In the documentation this request takes the query parameter "expand" however there are no listed values and the example value does not work.
    public static func getAllRelatedInfo(rxcui: String) -> Request<AllRelatedGroupsWrapper> {
        let rxcui = rxcui.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? rxcui
        return Request(path: "/REST/rxcui/\(rxcui)/allrelated.json", method: .get(.empty))
    }
    
    /// Searches for strings in the data set that most closely match the term parameter.
    /// This function is useful for strings where an exact or normalized string match (findRxcuiByString) does not find the desired results. For example, consider the following queries:
    public static func getApproximateMatch(term: String, maxEntries: Int = 20, option: ApproximateMatchOption = .current) -> Request<ApproximateGroupWrapper> {
        var payload = HTTPSPayload()
        payload.queryItems = [
            .init(name: "term", value: term),
            .init(name: "maxEntries", value: String(maxEntries)),
            .init(name: "option", value: String(option.rawValue))
        ]
        
        return Request(path: "/REST/approximateTerm.json", method: .get(payload))
    }
}
