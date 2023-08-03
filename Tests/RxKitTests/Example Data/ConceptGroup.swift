import RxKit

extension ConceptGroup {
    public static var emptyPropertyExample: ConceptGroup? {
        let JSON = """
        {"tty":"BPCK"}
        """
        
        guard let data = JSON.data(using: .utf8) else {
            return nil
        }
        
        do {
            return try ConceptGroup.decode(data: data)
        } catch {
            print("Concept Property Example Error:", error)
            return nil
        }
    }
    
    public static var example: ConceptGroup? {
        let JSON = """
        {"tty":"SBD","conceptProperties":[{"rxcui":"596928","name":"duloxetine 20 MG Delayed Release Oral Capsule [Cymbalta]","synonym":"Cymbalta 20 MG Delayed Release Oral Capsule","tty":"SBD","language":"ENG","suppress":"N","umlscui":""},{"rxcui":"596932","name":"duloxetine 30 MG Delayed Release Oral Capsule [Cymbalta]","synonym":"Cymbalta 30 MG Delayed Release Oral Capsule","tty":"SBD","language":"ENG","suppress":"N","umlscui":""},{"rxcui":"615186","name":"duloxetine 60 MG Delayed Release Oral Capsule [Cymbalta]","synonym":"Cymbalta 60 MG (as duloxetine HCl 67.3 MG) Delayed Release Oral Capsule","tty":"SBD","language":"ENG","suppress":"N","umlscui":""}]}
        """
        
        guard let data = JSON.data(using: .utf8) else {
            return nil
        }
        
        do {
            return try ConceptGroup.decode(data: data)
        } catch {
            print("Concept Property Example Error:", error)
            return nil
        }
    }
}
