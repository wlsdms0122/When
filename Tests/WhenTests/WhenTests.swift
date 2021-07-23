import XCTest
@testable import When

final class WhenTests: XCTestCase {
    func testValueReturnEqualKeyInWhen() {
        // Given
        let value = "a"
        
        // When
        let result = when(value) {
            "a" ~> 1
            "b" ~> 2
            "c" ~> 3
        }
        
        // Then
        XCTAssertEqual(result, 1)
    }
}
