//
//  CounterViewController.swift
//  UIKitCollaborationTest
//
//  Created by Seunghun Yang on 2021/05/03.
//

import UIKit

class CounterViewController: UIViewController {
    // MARK: - Properties
    
    var count = 0 {
        didSet {
            self.counterLabel.text = "\(count)"
        }
    }
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var counterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        counterLabel.text = "\(count)"
        // Do any additional setup after loading the view.
    }
    
    // MARK: - IBAction
    
    @IBAction func didTapCount(_ sender: Any) {
        count += 1
    }
}
