//
//  Tend.swift
//  Framework_Jan21
//
//  Created by thinhtle on 1/21/25.
//

import Foundation
import UIKit

public class Tend {
    public init() {}

    public func greetUser(name: String) -> String {
        if let frameworkBundle = Bundle(identifier: "com.spiraledge.Framework-Jan21"),
           let frameworkVersion = frameworkBundle.infoDictionary?["CFBundleShortVersionString"] as? String {
            print("Framework path: \(frameworkBundle.bundlePath)")
            return "Hello, \(name)! Welcome to Tend_Framework v\(frameworkVersion)"
        }
        
        return "Hello, \(name)! Welcome to Tend_Framework. (Version not found)"
    }

    public func addViewAndLabel(to parentView: UIView, text: String) {
        // 🛑 Remove old subviews before adding new ones
        for subview in parentView.subviews {
            if subview is UILabel || subview is UIView {
                subview.removeFromSuperview()
            }
        }

        // Create a container view
        let containerView = UIView()
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.backgroundColor = .blue // Ensure background color is updated

        // Create a label
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 16)

        // Add label to the container view
        containerView.addSubview(label)
        
        // Add container view to the parent view
        parentView.addSubview(containerView)
        
        // Set constraints for container view to match parentView
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: parentView.topAnchor),
            containerView.leadingAnchor.constraint(equalTo: parentView.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: parentView.trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: parentView.bottomAnchor)
        ])
        
        // Set constraints for label
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            label.leadingAnchor.constraint(greaterThanOrEqualTo: containerView.leadingAnchor, constant: 8),
            label.trailingAnchor.constraint(lessThanOrEqualTo: containerView.trailingAnchor, constant: -8)
        ])

        print("✅ UI đã được cập nhật với màu mới.")
    }

}


