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
}
