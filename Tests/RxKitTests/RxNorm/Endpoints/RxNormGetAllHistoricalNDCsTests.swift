import XCTest
@testable import RxKit

final class RxNormGetAllHistoricalNDCsTests: XCTestCase {
    private var client: Client = .init()

    /// Tests the ``RxNorm.getAllHistoricalNDCs(depth:)`` endpoint. Specifically tests the presently directly depth..
    func testGetAllHistoricalNDCs_presentlyDirectly() async throws {
        let request = RxNorm.getAllHistoricalNDCs(rxcui: "1668240", depth: .presentlyDirectly)
        _ = try await client.run(request)
    }
    
    /// Tests the ``RxNorm.getAllHistoricalNDCs(depth:)`` endpoint. Specifically tests the ever directly depth..
    func testGetAllHistoricalNDCs_everDirectly() async throws {
        let request = RxNorm.getAllHistoricalNDCs(rxcui: "1668240", depth: .everDirectly)
        _ = try await client.run(request)
    }

    /// Tests the ``RxNorm.getAllHistoricalNDCs(depth:)`` endpoint. Specifically tests the ever depth.
    func testGetAllHistoricalNDCs_ever() async throws {
        let request = RxNorm.getAllHistoricalNDCs(rxcui: "1668240", depth: .ever)
        _ = try await client.run(request)
    }
}
