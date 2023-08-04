import XCTest
@testable import RxKit

final class RxNormGetAllNDCsByStatusTests: XCTestCase {
    private var client: Client = .init()

    /// Tests the ``RxNorm.getAllNDCsByStatus(status:)`` endpoint. Specifically the active status.
    func testGetAllNDCsByStatus_active() async throws {
        let request = RxNorm.getAllNDCsByStatus(status: [.active])
        _ = try await client.run(request)
    }
    
    /// Tests the ``RxNorm.getAllNDCsByStatus(status:)`` endpoint. Specifically the alien status.
    func testGetAllNDCsByStatus_alien() async throws {
        let request = RxNorm.getAllNDCsByStatus(status: [.alien])
        _ = try await client.run(request)
    }
    
    /// Tests the ``RxNorm.getAllNDCsByStatus(status:)`` endpoint. Specifically the all status.
    func testGetAllNDCsByStatus_all() async throws {
        let request = RxNorm.getAllNDCsByStatus(status: [.all])
        _ = try await client.run(request)
    }
    
    /// Tests the ``RxNorm.getAllNDCsByStatus(status:)`` endpoint. Specifically the obsolete status.
    func testGetAllNDCsByStatus_obsolete() async throws {
        let request = RxNorm.getAllNDCsByStatus(status: [.obsolete])
        _ = try await client.run(request)
    }
    
    /// Tests the ``RxNorm.getAllNDCsByStatus(status:)`` endpoint. Specifically the obsolete status.
    func testGetAllNDCsByStatus() async throws {
        let request = RxNorm.getAllNDCsByStatus(status: [.active, .alien, .obsolete])
        _ = try await client.run(request)
    }

}
