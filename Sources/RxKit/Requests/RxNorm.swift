/// Requests found in the [RxNorm API](https://lhncbc.nlm.nih.gov/RxNav/APIs/RxNormAPIs.html)
public enum RxNorm {
    /// Get the drug products associated with a specified name. The name can be an ingredient, brand name, clinical dose form, branded dose form, clinical drug component, or branded drug component. The following table shows examples of input and the types of drug products returned. See default paths for the paths traveled to get concepts for each term type.
    ///
    /// https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getDrugs.html
    /// - Parameter query: <#query description#>
    /// - Returns: A request for a ``DrugGroup``
    public static func getDrugs(query: String) -> Request<DrugGroup> {
        var payload = HTTPSPayload()
        payload.queryItems = [
            .init(name: "name", value: query)
        ]
        return Request(path: "/REST/drugs.json", method: .get(payload))
    }
    
    /// Return concept information for specified status values.
    ///
    /// The returned name and TTY reflect the concept as represented in the current RxNorm. For Remapped-status concepts, the name and TTY come from the atom archive if there is no current source. A TTY is provided only if the name is from the atom archive.
    ///
    /// https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getAllConceptsByStatus.html
    /// - Parameter statuses: Status(es).
    /// - Returns: A request for a ``MinConceptGroup``.
    public static func getAllConceptsByStatus(statuses: [ConceptStatus]) -> Request<MinConceptGroup> {
        var payload = HTTPSPayload()
        payload.queryItems = [
            .init(name: "status", value: statuses.toSpaceSeparated())
        ]
        
        return Request(path: "/REST/allstatus.json", method: .get(payload))
    }
    
    /// Returns concepts of the term types specified by the tty parameter.
    ///
    /// https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getAllConceptsByTTY.html
    /// - Parameter ttys: Term type(s), or ALL.
    /// - Returns: A request for a ``MinConceptGroup``.
    public static func getAllConceptsByTTY(ttys: [TTY]) -> Request<MinConceptGroup> {
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
    ///
    /// https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getAllHistoricalNDCs.html
    /// - Parameters:
    ///   - rxcui: The RXCUI to search history of.
    ///   - depth: Depth of history to retrieve
    /// - Returns: A request for a ``HistoricalNDCConcept``.
    public static func getAllHistoricalNDCs(rxcui: String, depth: HistoryDepth) -> Request<HistoricalNDCConcept> {
        var payload = HTTPSPayload()
        payload.queryItems = [
            .init(name: "history", value: String(depth.rawValue))
        ]
        
        let rxcui = rxcui.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? rxcui
        return Request(path: "/REST/rxcui/\(rxcui)/allhistoricalndcs.json", method: .get(payload))
    }
    
    /// The resource is a list of National Drug Codes (NDCs) that have appeared in RxNav's data sources. The list is optionally filtered by the status parameter.
    ///
    /// https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getAllNDCsByStatus.html
    /// - Parameter statuses: NDC status(es)
    /// - Returns: A request for a ``NDCList``.
    public static func getAllNDCsByStatus(statuses: [NDCStatus]) -> Request<NDCList> {
        var payload = HTTPSPayload()
        payload.queryItems = [
            .init(name: "status", value: statuses.toSpaceSeparated())
        ]
        
        return Request(path: "/REST/allNDCstatus.json", method: .get(payload))
    }
    
    /// For each NDC association, the result indicates by startDate and endDate the first and last releases of RxNorm that indicated the association. NDC associations that are still in effect have an endDate of the current RxNorm release.
    ///
    /// https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getAllProperties.html
    /// - Parameters:
    ///   - rxcui: RxNorm identifier.
    ///   - props: Property categories to retrieve, or ALL.
    /// - Returns: Returns a request for ``PropConceptGroup``
    public static func getAllProperties(rxcui: String, props: [PropCategory]) -> Request<PropConceptGroup> {
        var payload = HTTPSPayload()
        payload.queryItems = [
            .init(name: "prop", value: props.toSpaceSeparated())
        ]
        
        let rxcui = rxcui.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? rxcui
        return Request(path: "/REST/rxcui/\(rxcui)/allProperties.json", method: .get(payload))
    }

    /// Get RxNorm concepts related to the concept identified by rxcui. Related concepts may be of term types "IN", "MIN", "PIN", "BN", "SBD", "SBDC", "SBDF", "SBDG", "SCD", "SCDC", "SCDF", "SCDG", "DF", "DFG", "BPCK" and "GPCK". See default paths for the RxNorm relationship paths traveled to get concepts for each term type.
    /// In the documentation this request takes the query parameter "expand" however there are no listed values and the example value does not work.
    ///
    /// https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getAllRelatedInfo.html
    /// - Parameter rxcui: RxNorm identifier.
    /// - Returns: Arequest for an  ``AllRelatedGroups`` object.
    public static func getAllRelatedInfo(rxcui: String) -> Request<AllRelatedGroups> {
        let rxcui = rxcui.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? rxcui
        return Request(path: "/REST/rxcui/\(rxcui)/allrelated.json", method: .get(.empty))
    }
    
    /// Searches for strings in the data set that most closely match the term parameter.
    /// This function is useful for strings where an exact or normalized string match (findRxcuiByString) does not find the desired results.
    ///
    /// https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getApproximateMatch.html
    /// - Parameters:
    ///   - term: <#term description#>
    ///   - maxEntries: <#maxEntries description#>
    ///   - option: <#option description#>
    /// - Returns: A request for an ``ApproximateGroup``.
    public static func getApproximateMatch(term: String, maxEntries: Int = 20, option: ApproximateMatchOption = .current) -> Request<ApproximateGroup> {
        var payload = HTTPSPayload()
        payload.queryItems = [
            .init(name: "term", value: term),
            .init(name: "maxEntries", value: String(maxEntries)),
            .init(name: "option", value: String(option.rawValue))
        ]
        
        return Request(path: "/REST/approximateTerm.json", method: .get(payload))
    }
    
    /// Gets the names used by RxNav for auto completion. This is a large list which includes names of ingredients, precise ingredients, brands, and synonyms of branded packs.
    ///
    /// https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getDisplayTerms.html
    /// - Returns: A request for ``DisplayTermsList``.
    public static func getDisplayTerms() -> Request<DisplayTermsList> {
        return Request(path: "/REST/displaynames.json", method: .get(.empty))
    }

    /// Get the valid identifier types of the RxNorm data set.
    ///
    /// https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getIdTypes.html
    /// - Returns: A request for ``IDTypeList``.
    public static func getIdTypes() -> Request<IDTypeList> {
        return Request(path: "/REST/idtypes.json", method: .get(.empty))
    }
    
    /// Get the brands that contain all the ingredients specified (as RXCUIs) by the ingredientids parameter.
    ///
    /// https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getMultiIngredBrand.html
    /// - Parameter ingredientIDs: <#ingredientIDs description#>
    /// - Returns: A request for a ``BrandGroup``
    public static func getMultiIngredBrand(ingredientIDs: [String]) -> Request<BrandGroup> {
        var payload = HTTPSPayload()
        payload.queryItems = [
            .init(name: "ingredientids", value: ingredientIDs.toSpaceSeparated()),
        ]

        return Request(path: "/REST/brands.json", method: .get(payload))
    }
    
    /// Get National Drug Code (NDC) properties. This function returns NDC properties for an NDC, or for NDCs with a given two-segment prefix, or for the NDC related to a structured product label, or for the NDCs currently related to a concept by RxNorm.
    ///
    /// https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxNorm.getNDCProperties.html
    /// - Parameters:
    ///   - id: <#id description#>
    ///   - statuses: <#statuses description#>
    /// - Returns: A request for an ``NDCPropertyList``
    public static func getNDCProperties(id: String, statuses: [NDCStatus] = [.active]) -> Request<NDCPropertyList> {
        var payload = HTTPSPayload()
        payload.queryItems = [
            .init(name: "id", value: id),
            .init(name: "ndcstatus", value: statuses.toSpaceSeparated())
        ]

        return Request(path: "/REST/ndcproperties.json", method: .get(payload))
    }
}


