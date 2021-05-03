//
//  ViewController.swift
//  UIKitCollaborationTest
//
//  Created by Seunghun Yang on 2021/05/03.
//

import UIKit

enum TrafficLight {
    case green
    case yellow
    case red
    
    mutating func next() {
        switch(self) {
        case .green:
            self = .yellow
        case .yellow:
            self = .red
        case .red:
            self = .green
        }
    }
}

class ViewController: UIViewController {
    // MARK: - Properties
    
    var state: TrafficLight = .green {
        didSet {
            switch(state) {
            case .green:
                self.view.backgroundColor = .green
            case .yellow:
                self.view.backgroundColor = .yellow
            case .red:
                self.view.backgroundColor = .red
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }

    // MARK: - IBAction
    
    @IBAction func didTapTrafficLight(_ sender: Any) {
        self.state.next()
    }
}

