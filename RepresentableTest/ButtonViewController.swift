//
//  ButtonViewController.swift
//  RepresentableTest
//
//  Created by Eric Kampman on 12/1/24.
//

import UIKit

protocol ButtonViewControllerDelegate {
	func buttonTapped()
}

class ButtonViewController: UIViewController {
	var delegate: ButtonViewControllerDelegate!
//	var buttonVal = false

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
	
	@IBAction func didTapButton(_ sender: Any) {
		delegate.buttonTapped()
	}

}
