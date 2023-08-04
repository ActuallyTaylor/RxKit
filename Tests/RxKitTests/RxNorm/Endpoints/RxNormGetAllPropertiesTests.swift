import XCTest
@testable import RxKit

final class RxNormGetAllPropertiesTests: XCTestCase {
    private var client: Client = .init()

    /// Tests the ``RxNorm.getAllProperties(rxcui:,props:)`` endpoint. Specifically tests the attributes category
    func testGetAllProperties_attributes() async throws {
        let request = RxNorm.getAllProperties(rxcui: "18600", props: [.attributes])
        _ = try await client.run(request)
    }
    
    /// Tests the ``RxNorm.getAllProperties(rxcui:,props:)`` endpoint. Specifically tests the codes category
    func testGetAllProperties_codes() async throws {
        let request = RxNorm.getAllProperties(rxcui: "18600", props: [.codes])
        _ = try await client.run(request)
    }
    
    /// Tests the ``RxNorm.getAllProperties(rxcui:,props:)`` endpoint. Specifically tests the names category
    func testGetAllProperties_names() async throws {
        let request = RxNorm.getAllProperties(rxcui: "18600", props: [.names])
        _ = try await client.run(request)
    }

    /// Tests the ``RxNorm.getAllProperties(rxcui:,props:)`` endpoint. Specifically tests the names category
    func testGetAllProperties_sources() async throws {
        let request = RxNorm.getAllProperties(rxcui: "18600", props: [.sources])
        _ = try await client.run(request)
    }

    /// Tests the ``RxNorm.getAllProperties(rxcui:,props:)`` endpoint. Specifically tests the all category
    func testGetAllProperties_all() async throws {
        let request = RxNorm.getAllProperties(rxcui: "18600", props: [.all])
        _ = try await client.run(request)
    }

    /// Tests the ``RxNorm.getAllProperties(rxcui:,props:)`` endpoint. Specifically tests the all category
    func testGetAllProperties() async throws {
        let request = RxNorm.getAllProperties(rxcui: "18600", props: [.attributes, .codes, .names, .sources])
        _ = try await client.run(request)
    }
}

