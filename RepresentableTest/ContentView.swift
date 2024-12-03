//
//  ContentView.swift
//  RepresentableTest
//
//  Created by Eric Kampman on 12/1/24.
//

import SwiftUI

struct ContentView: View {
	@State var buttonValue = false
    var body: some View {
        VStack {
			Text("Button Value: \(buttonValue)")
			ButtonViewControllerRepresentable(buttonValue: $buttonValue)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
