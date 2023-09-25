//
//  XPE_ProjetoAplicadoUITestsLaunchTests.swift
//  XPE-ProjetoAplicadoUITests
//
//  Created by Joan Wilson Oliveira on 25/09/23.
//

import XCTest

final class XPE_ProjetoAplicadoUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
