//
//  HelloWorldCommand.swift
//  HelloWorldLibrary
//
//  Created by Maxwell Elliott on 04/10/23.
//

import ArgumentParser

public struct HelloWorldCommand: ParsableCommand {

    public static var configuration: CommandConfiguration =
        .init(commandName: "hello-world")

    @Option(name: .long)
    internal var programName: String?

    public func run() throws {
        print("Hello World!")
        if let programName: String = programName {
            print("My name is \(programName)")
        }
    }

    public init() {
        // NoOp
    }
}
