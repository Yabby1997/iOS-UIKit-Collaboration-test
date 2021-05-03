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
    @IBOutlet weak var countNumberTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        counterLabel.text = "\(count)"
        // Do any additional setup after loading the view.
    }
    
    // MARK: - IBAction
    
    @IBAction func didTapCount(_ sender: Any) {
        count += 1
    }
    
    @IBAction func didTapSub(_ sender: Any) {
        guard let countNum = countNumberTextField.text else { return }
        self.count -= (Int(countNum) ?? 0)
    }
}
