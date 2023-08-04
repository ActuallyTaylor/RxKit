import XCTest
@testable import RxKit

final class RxNormModelTests: XCTestCase {
    /// Tests the ``DrugGroupWrapper`` model
    func testDrugGroupWrapperModel() throws {
        XCTAssert(DrugGroup.example != nil)
    }

    /// Tests the ``ConceptGroup`` model when there is an empty properties section
    func testConceptGroupModelWithEmptyProperties() throws {
        XCTAssert(ConceptGroup.emptyPropertyExample != nil)
    }

    /// Tests the ``ConceptGroup`` model
    func testConceptGroupModel() throws {
        XCTAssert(ConceptGroup.example != nil)
    }

    /// Tests the ``ConceptProperty`` model
    func testConceptPropertyExample() throws {
        XCTAssert(ConceptProperty.example != nil)
    }
}
