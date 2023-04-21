//
//  SubViewController.swift
//  Navigation
//
//  Created by Ion Sebastian Rodriguez Lara on 21/04/23.
//

import UIKit

class SubViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let barBttn = UIBarButtonItem(systemItem: .rewind)
        self.navigationItem.rightBarButtonItem = barBttn
        barBttn.target = self
        barBttn.action = #selector(returnToDoor(_:))
    }
    @objc func returnToDoor(_ sender: UIBarButtonItem) {
        if navigationController?.visibleViewController != navigationController?.topViewController {
            print("HI")
        }
        navigationController?.popToRootViewController(animated: true)
    }

}
