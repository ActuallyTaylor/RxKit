import XCTest
@testable import RxKit

final class RxNormGetApproximateMatch: XCTestCase {
    private var client: Client = .init()
    
    /// Tests the ``RxNorm.getApproximateMatch(term:,maxEntries:,option:)`` endpoint. Specifically tests the current option
    func testGetAllConceptsByStatus_Current() async throws {
        let request = RxNorm.getApproximateMatch(term: "zocor 10 mg", maxEntries: 4, option: .current)
        _ = try await client.run(request)
    }
    
    /// Tests the ``RxNorm.getApproximateMatch(term:,maxEntries:,option:)`` endpoint. Specifically tests the current option
    func testGetAllConceptsByStatus_Active() async throws {
        let request = RxNorm.getApproximateMatch(term: "zocor 10 mg", maxEntries: 4, option: .active)
        _ = try await client.run(request)
    }

    /// Tests the ``RxNorm.getApproximateMatch(term:,maxEntries:,option:)`` endpoint. Specifically tests the default options
    func testGetAllConceptsByStatus_Defaults() async throws {
        let request = RxNorm.getApproximateMatch(term: "zocor 10 mg")
        _ = try await client.run(request)
    }
}
