import XCTest
@testable import RxKit

final class RxNormGetAllConceptsByStatusTests: XCTestCase {
    private var client: Client = .init()

    /// Tests the ``RxNorm.getAllConceptsByStatus(statuses:)`` endpoint. Specifically tests the active status
    func testGetAllConceptsByStatus_Active() async throws {
        let request = RxNorm.getAllConceptsByStatus(statuses: [.active])
        _ = try await client.run(request)
    }
    
    /// Tests the ``RxNorm.getAllConceptsByStatus(statuses:)`` endpoint. Specifically tests the all status
    func testGetAllConceptsByStatus_All() async throws {
        let request = RxNorm.getAllConceptsByStatus(statuses: [.all])
        _ = try await client.run(request)
    }

    /// Tests the ``RxNorm.getAllConceptsByStatus(statuses:)`` endpoint. Specifically tests the not current status
    func testGetAllConceptsByStatus_NotCurrent() async throws {
        let request = RxNorm.getAllConceptsByStatus(statuses: [.notCurrent])
        _ = try await client.run(request)
    }
    
    /// Tests the ``RxNorm.getAllConceptsByStatus(statuses:)`` endpoint. Specifically tests the obsolete status
    func testGetAllConceptsByStatus_Obsolete() async throws {
        let request = RxNorm.getAllConceptsByStatus(statuses: [.obsolete])
        _ = try await client.run(request)
    }

    /// Tests the ``RxNorm.getAllConceptsByStatus(statuses:)`` endpoint. Specifically tests the quantified status
    func testGetAllConceptsByStatus_Quantified() async throws {
        let request = RxNorm.getAllConceptsByStatus(statuses: [.quantified])
        _ = try await client.run(request)
    }

    /// Tests the ``RxNorm.getAllConceptsByStatus(statuses:)`` endpoint. Specifically tests the remapped status
    func testGetAllConceptsByStatus_Remapped() async throws {
        let request = RxNorm.getAllConceptsByStatus(statuses: [.remapped])
        _ = try await client.run(request)
    }

    /// Tests the ``RxNorm.getAllConceptsByStatus(statuses:)`` endpoint. Specifically tests the active and not current statuses
    func testGetAllConceptsByStatus_Multiple() async throws {
        let request = RxNorm.getAllConceptsByStatus(statuses: [.active, .notCurrent])
        _ = try await client.run(request)
    }
}

