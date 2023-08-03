import RxKit

extension ConceptProperty {
    public static var example: ConceptProperty? {
        let JSON = """
        {"rxcui":"596928","name":"duloxetine 20 MG Delayed Release Oral Capsule [Cymbalta]","synonym":"Cymbalta 20 MG Delayed Release Oral Capsule","tty":"SBD","language":"ENG","suppress":"N","umlscui":""}
        """
        
        guard let data = JSON.data(using: .utf8) else {
            return nil
        }
        
        do {
            return try ConceptProperty.decode(data: data)
        } catch {
            print("Concept Property Example Error:", error)
            return nil
        }
    }
}
