//
//  CounterSampleUITests.swift
//  CounterSampleUITests
//
//  Created by Toshiya Kobayashi on 2025/01/02.
//

import XCTest

final class CounterSampleUITests: XCTestCase {
    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    @MainActor
    func testExample() throws {
        let app = XCUIApplication()
        app.launch()

        let countText = app.staticTexts["count_text"]
        XCTAssertEqual(countText.label, "0")

        app.buttons["increment_button"].tap()
        XCTAssertEqual(countText.label, "1")

        app.buttons["decrement_button"].tap()
        XCTAssertEqual(countText.label, "0")
    }
}
