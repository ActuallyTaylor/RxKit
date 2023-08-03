import XCTest
@testable import RxKit

final class RxNormEndpointTests: XCTestCase {
    private var client: Client = .init()

    /// Tests the ``RxNorm.getDrugs(name:)`` endpoint
    func testGetDrug() async throws {
        let request = RxNorm.getDrugs(query: "cymbalta")
        _ = try await client.run(request)
    }
    
    
}
