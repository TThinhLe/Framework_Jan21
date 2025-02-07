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
        if let frameworkBundle = Bundle(identifier: "com.spiraledge.Framework_Jan21"),
           let frameworkVersion = frameworkBundle.infoDictionary?["CFBundleShortVersionString"] as? String {
            print("Framework path: \(frameworkBundle.bundlePath)")
            return "Hello, \(name)! Welcome to Tend_Framework v\(frameworkVersion)"
        }
        
        return "Hello, \(name)! Welcome to Tend_Framework. (Version not found)"
    }
    let label2 = UILabel()
    let label1 = UILabel()
    let label3 = UILabel()
    let label4 = UILabel()
    
    public func addViewAndLabels(to parentView: UIView, text1: String, isDownloading: Bool, url: String, path: String) {
        // Remove old subviews
        for subview in parentView.subviews {
            if subview is UILabel || subview is UIView {
                subview.removeFromSuperview()
            }
        }

        // Create container view
        let containerView = UIView()
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.backgroundColor = .white

        // URL label
        let label1 = UILabel()
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.text = "url: \(url)"
        label1.textColor = .black
        label1.textAlignment = .center
        label1.font = UIFont.systemFont(ofSize: 16)
        label1.numberOfLines = 0
        label1.lineBreakMode = .byWordWrapping
        
        // Path label
        let label3 = UILabel()
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.text = "path: \(path)"
        label3.textColor = .black
        label3.textAlignment = .center
        label3.font = UIFont.systemFont(ofSize: 16)
        label3.numberOfLines = 0
        label3.lineBreakMode = .byWordWrapping

        // New label4
      
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.text = text1  // Set your desired text here
        label4.textColor = .black
        label4.textAlignment = .center
        label4.font = UIFont.systemFont(ofSize: 16)
        label4.numberOfLines = 0
        label4.lineBreakMode = .byWordWrapping

        // Downloading label
        let label2 = UILabel()
        if isDownloading {
            label2.translatesAutoresizingMaskIntoConstraints = false
            label2.text = "Downloading..."
            label2.textColor = .black
            label2.textAlignment = .center
            label2.font = UIFont.systemFont(ofSize: 16)
            label2.numberOfLines = 0
            label2.lineBreakMode = .byWordWrapping
            containerView.addSubview(label2)
        }

        // Add all labels to container
        containerView.addSubview(label1)
        containerView.addSubview(label3)
        containerView.addSubview(label4)
        parentView.addSubview(containerView)

        // Container constraints
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: parentView.topAnchor),
            containerView.leadingAnchor.constraint(equalTo: parentView.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: parentView.trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: parentView.bottomAnchor)
        ])

        // URL label constraints
        NSLayoutConstraint.activate([
            label1.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            label1.centerYAnchor.constraint(equalTo: containerView.centerYAnchor, constant: -36), // Adjusted for extra label
            label1.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16),
            label1.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -16)
        ])

        // Path label constraints
        NSLayoutConstraint.activate([
            label3.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            label3.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: 8),
            label3.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16),
            label3.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -16)
        ])

        // Label4 constraints
        NSLayoutConstraint.activate([
            label4.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            label4.topAnchor.constraint(equalTo: label3.bottomAnchor, constant: 8),
            label4.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16),
            label4.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -16)
        ])

        // Downloading label constraints
        if isDownloading {
            NSLayoutConstraint.activate([
                label2.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
                label2.topAnchor.constraint(equalTo: label4.bottomAnchor, constant: 8),
                label2.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16),
                label2.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -16)
            ])
        }
    }


}


