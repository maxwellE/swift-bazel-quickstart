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

    private enum CodingKeys: String, CodingKey {
        case programName = "programName"
    }

    public init(from decoder: Decoder) throws {
        let container: KeyedDecodingContainer<CodingKeys> = try decoder.container(keyedBy: CodingKeys.self)
        self.init(
            programName: try container.decodeIfPresent(String.self, forKey: .programName)
        )
    }

    public init() {
        // NoOp
    }

    public init(programName: String?) {
        self.programName = programName
    }

    public func run() throws {
        print("Hello World!")
        if let programName: String = programName {
            print("My name is \(programName)")
        }
    }
}
