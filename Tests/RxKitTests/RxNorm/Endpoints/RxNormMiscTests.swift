import XCTest
@testable import RxKit

final class RxNormMiscTests: XCTestCase {
    private var client: Client = .init()

    /// Tests the ``RxNorm.getDrugs(name:)`` endpoint
    func testGetDrug() async throws {
        let request = RxNorm.getDrugs(query: "cymbalta")
        _ = try await client.run(request)
    }
    
    /// Tests the ``RxNorm.getAllRelatedInfo(rxcui:)`` endpoint
    func testGetAllRelatedInfo() async throws {
        let request = RxNorm.getAllRelatedInfo(rxcui: "9801")
        _ = try await client.run(request)
    }
}
