//
//  Tend.swift
//  Framework_Jan21
//
//  Created by thinhtle on 1/21/25.
//

import Foundation

public class Tend{
    public init() {}
    
    public func greetUser(name: String) -> String {
        if let frameworkBundle = Bundle(identifier: "com.spiraledge.Framework-Jan21"),
           let frameworkVersion = frameworkBundle.infoDictionary?["CFBundleShortVersionString"] as? String {
            return "Hello, \(name)! Welcome to Tend_Framework v\(frameworkVersion)"
        }
        return "Hello, \(name)! Welcome to Tend_Framework. (Version not found)"
    }
}

