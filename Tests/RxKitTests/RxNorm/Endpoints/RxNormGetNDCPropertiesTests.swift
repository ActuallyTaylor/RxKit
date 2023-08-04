import XCTest
@testable import RxKit

final class RxNormGetNDCPropertiesTests: XCTestCase {
    private var client: Client = .init()
    
    /// Tests the ``RxNorm.getNDCProperties(statuses:)`` endpoint. Specifically the active status.
    func testGetAllNDCsByStatus_active() async throws {
        let request = RxNorm.getNDCProperties(id: "0378-4517-93", statuses: [.active])
        _ = try await client.run(request)
    }
    
    /// Tests the ``RxNorm.getNDCProperties(statuses:)`` endpoint. Specifically the alien status.
    func testGetAllNDCsByStatus_alien() async throws {
        let request = RxNorm.getNDCProperties(id: "0378-4517-93", statuses: [.alien])
        _ = try await client.run(request)
    }
    
    /// Tests the ``RxNorm.getNDCProperties(statuses:)`` endpoint. Specifically the all status.
    func testGetAllNDCsByStatus_all() async throws {
        let request = RxNorm.getNDCProperties(id: "0378-4517-93", statuses: [.all])
        _ = try await client.run(request)
    }
    
    /// Tests the ``RxNorm.getNDCProperties(statuses:)`` endpoint. Specifically the obsolete status.
    func testGetAllNDCsByStatus_obsolete() async throws {
        let request = RxNorm.getNDCProperties(id: "0378-4517-93", statuses: [.obsolete])
        _ = try await client.run(request)
    }
    
    /// Tests the ``RxNorm.getNDCProperties(statuses:)`` endpoint. Specifically the obsolete status.
    func testGetAllNDCsByStatus() async throws {
        let request = RxNorm.getNDCProperties(id: "0378-4517-93", statuses: [.active, .alien, .obsolete])
        _ = try await client.run(request)
    }
    
    /// Tests the ``RxNorm.getNDCProperties(statuses:)`` endpoint. Specifically the obsolete status.
    func testGetAllNDCsByStatus_defaults() async throws {
        let request = RxNorm.getNDCProperties(id: "0378-4517-93")
        _ = try await client.run(request)
    }

}
