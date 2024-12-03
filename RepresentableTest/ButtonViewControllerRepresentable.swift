//
//  ButtonViewRepresentable.swift
//  RepresentableTest
//
//  Created by Eric Kampman on 12/1/24.
//

import UIKit
import SwiftUI

struct ButtonViewControllerRepresentable: UIViewControllerRepresentable {
	typealias UIViewControllerType = ButtonViewController
	
	@Binding var buttonValue: Bool
	
	class Coordinator: NSObject, ButtonViewControllerDelegate {
		
		var parent: ButtonViewControllerRepresentable
		
		init(parent: ButtonViewControllerRepresentable) {
			self.parent = parent
		}
		
		func buttonTapped() {
			print("Button tapped")
			self.parent.buttonValue = !self.parent.buttonValue
		}
	}
	
	func makeCoordinator() -> Coordinator {
		Coordinator(parent: self)
	}
	
	func makeUIViewController(context: Context) -> ButtonViewController {
		let vc = ButtonViewController()
		vc.delegate = context.coordinator
		
		return vc
	}
	
	func updateUIViewController(_ uiViewController: ButtonViewController, context: Context) {
	}
}
