import XCTest
@testable import Perfect_Cookie_Demo

class Perfect_Cookie_DemoTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(Perfect_Cookie_Demo().text, "Hello, World!")
    }


    static var allTests : [(String, (Perfect_Cookie_DemoTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
