import XCTest
@testable import RxKit

final class RxNormGetAllConceptsByTTYTests: XCTestCase {
    private var client: Client = .init()

    /// Tests the ``RxNorm.getAllConceptsByTTY(ttys:)`` endpoint. Specifically tests the ALL tty.
    func testGetAllConceptsByTTY_ALL() async throws {
        let request = RxNorm.getAllConceptsByTTY(ttys: [.ALL])
        _ = try await client.run(request)
    }
    
    /// Tests the ``RxNorm.getAllConceptsByTTY(ttys:)`` endpoint. Specifically tests the BN tty.
    func testGetAllConceptsByTTY_BN() async throws {
        let request = RxNorm.getAllConceptsByTTY(ttys: [.BN])
        _ = try await client.run(request)
    }
    
    /// Tests the ``RxNorm.getAllConceptsByTTY(ttys:)`` endpoint. Specifically tests the BPCK tty.
    func testGetAllConceptsByTTY_BPCK() async throws {
        let request = RxNorm.getAllConceptsByTTY(ttys: [.BPCK])
        _ = try await client.run(request)
    }

    /// Tests the ``RxNorm.getAllConceptsByTTY(ttys:)`` endpoint. Specifically tests the DF tty.
    func testGetAllConceptsByTTY_DF() async throws {
        let request = RxNorm.getAllConceptsByTTY(ttys: [.DF])
        _ = try await client.run(request)
    }

    /// Tests the ``RxNorm.getAllConceptsByTTY(ttys:)`` endpoint. Specifically tests the DFG tty.
    func testGetAllConceptsByTTY_DFG() async throws {
        let request = RxNorm.getAllConceptsByTTY(ttys: [.DFG])
        _ = try await client.run(request)
    }

    /// Tests the ``RxNorm.getAllConceptsByTTY(ttys:)`` endpoint. Specifically tests the GPCK tty.
    func testGetAllConceptsByTTY_GPCK() async throws {
        let request = RxNorm.getAllConceptsByTTY(ttys: [.GPCK])
        _ = try await client.run(request)
    }

    /// Tests the ``RxNorm.getAllConceptsByTTY(ttys:)`` endpoint. Specifically tests the IN tty.
    func testGetAllConceptsByTTY_IN() async throws {
        let request = RxNorm.getAllConceptsByTTY(ttys: [.IN])
        _ = try await client.run(request)
    }

    /// Tests the ``RxNorm.getAllConceptsByTTY(ttys:)`` endpoint. Specifically tests the MIN tty.
    func testGetAllConceptsByTTY_MIN() async throws {
        let request = RxNorm.getAllConceptsByTTY(ttys: [.MIN])
        _ = try await client.run(request)
    }

    /// Tests the ``RxNorm.getAllConceptsByTTY(ttys:)`` endpoint. Specifically tests the PIN tty.
    func testGetAllConceptsByTTY_PIN() async throws {
        let request = RxNorm.getAllConceptsByTTY(ttys: [.PIN])
        _ = try await client.run(request)
    }

    /// Tests the ``RxNorm.getAllConceptsByTTY(ttys:)`` endpoint. Specifically tests the SBD tty.
    func testGetAllConceptsByTTY_SBD() async throws {
        let request = RxNorm.getAllConceptsByTTY(ttys: [.SBD])
        _ = try await client.run(request)
    }

    /// Tests the ``RxNorm.getAllConceptsByTTY(ttys:)`` endpoint. Specifically tests the SBDC tty.
    func testGetAllConceptsByTTY_SBDC() async throws {
        let request = RxNorm.getAllConceptsByTTY(ttys: [.SBDC])
        _ = try await client.run(request)
    }

    /// Tests the ``RxNorm.getAllConceptsByTTY(ttys:)`` endpoint. Specifically tests the SBDF tty.
    func testGetAllConceptsByTTY_SBDF() async throws {
        let request = RxNorm.getAllConceptsByTTY(ttys: [.SBDF])
        _ = try await client.run(request)
    }

    /// Tests the ``RxNorm.getAllConceptsByTTY(ttys:)`` endpoint. Specifically tests the SDBG tty.
    func testGetAllConceptsByTTY_SDBG() async throws {
        let request = RxNorm.getAllConceptsByTTY(ttys: [.SBDG])
        _ = try await client.run(request)
    }

    /// Tests the ``RxNorm.getAllConceptsByTTY(ttys:)`` endpoint. Specifically tests the SCD tty.
    func testGetAllConceptsByTTY_SCD() async throws {
        let request = RxNorm.getAllConceptsByTTY(ttys: [.SCD])
        _ = try await client.run(request)
    }

    /// Tests the ``RxNorm.getAllConceptsByTTY(ttys:)`` endpoint. Specifically tests the SCDC tty.
    func testGetAllConceptsByTTY_SCDC() async throws {
        let request = RxNorm.getAllConceptsByTTY(ttys: [.SCDC])
        _ = try await client.run(request)
    }

    /// Tests the ``RxNorm.getAllConceptsByTTY(ttys:)`` endpoint. Specifically tests the SCDF tty.
    func testGetAllConceptsByTTY_SCDF() async throws {
        let request = RxNorm.getAllConceptsByTTY(ttys: [.SCDF])
        _ = try await client.run(request)
    }

    /// Tests the ``RxNorm.getAllConceptsByTTY(ttys:)`` endpoint. Specifically tests the SCDG tty.
    func testGetAllConceptsByTTY_SCDG() async throws {
        let request = RxNorm.getAllConceptsByTTY(ttys: [.SCDG])
        _ = try await client.run(request)
    }
    
    /// Tests the ``RxNorm.getAllConceptsByTTY(ttys:)`` endpoint. Specifically tests the SCDG tty.
    func testGetAllConceptsByTTY() async throws {
        let request = RxNorm.getAllConceptsByTTY(ttys: TTY.allCases)
        _ = try await client.run(request)
    }

}
