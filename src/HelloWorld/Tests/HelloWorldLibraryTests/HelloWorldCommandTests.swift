//
//  HelloWorldCommandTests.swift
//  HelloWorldLibraryTests
//
//  Created by Maxwell Elliott on 04/11/23.
//

import ArgumentParser
import XCTest

@testable import HelloWorldLibrary

final class HelloWorldCommandTests: XCTestCase {

    func testConfiguration() {
        let configuration: CommandConfiguration = HelloWorldCommand.configuration
        XCTAssertEqual(configuration.commandName, "hello-world")
    }

    func testInit() throws {
        let command: Any = HelloWorldCommand()
        XCTAssertTrue(command is ParsableCommand)
    }

    func testInitDecode() throws {
        // GIVEN
        let data: Data = .init("""
        {
            "programName": "programName"
        }
        """.utf8)

        // WHEN
        let subject: HelloWorldCommand = try JSONDecoder().decode(HelloWorldCommand.self, from: data)

        // THEN
        XCTAssertEqual(subject.programName, "programName")
    }

    func test_run() throws {
        // GIVEN
        let subject = HelloWorldCommand = .init(
            programName: "programName"
        )

        // THEN
        try subject.run()
    }
}
