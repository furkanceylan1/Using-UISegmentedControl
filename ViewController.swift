//
//  ViewController.swift
//  Using UISegmentedControl
//
//  Created by Furkan Ceylan on 3.06.2022.
//

import UIKit

class ViewController: UIViewController {

    let segment = UISegmentedControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        segment.insertSegment(withTitle: "Yellow", at: 0, animated: true)
        segment.insertSegment(withTitle: "Blue", at: 1, animated: true)
        segment.selectedSegmentIndex = 0
        segment.selectedSegmentTintColor = .systemTeal
        segment.frame = CGRect(x: width * 0.5 - (width * 0.5 / 2), y: height * 0.1, width: width * 0.5, height: 34)
        segment.addTarget(self, action: #selector(indexChanged), for: .valueChanged)
        segment.backgroundColor = .white
        view.addSubview(segment)
    }
    
    @IBAction func indexChanged(_ sender: Any) {
        switch segment.selectedSegmentIndex
        {
        case 0:
            segment.selectedSegmentTintColor = .systemYellow
            view.backgroundColor = .systemYellow
        case 1:
            segment.selectedSegmentTintColor = .systemBlue
            view.backgroundColor = .systemBlue
        default:
            break
        }
    }

}

