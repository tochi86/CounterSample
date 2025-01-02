//
//  ContentView.swift
//  CounterSample
//
//  Created by Toshiya Kobayashi on 2025/01/02.
//

import SwiftUI

@Observable
final class ContentViewModel {
    private(set) var count = 0

    func incrementButtonTapped() {
        count += 1
    }

    func decrementButtonTapped() {
        count -= 1
    }
}

struct ContentView: View {
    @State private var viewModel = ContentViewModel()

    var body: some View {
        VStack {
            Text("\(viewModel.count)")
                .accessibilityIdentifier("count_text")

            HStack {
                Button("Increment") {
                    viewModel.incrementButtonTapped()
                }
                .accessibilityIdentifier("increment_button")

                Button("Decrement") {
                    viewModel.decrementButtonTapped()
                }
                .accessibilityIdentifier("decrement_button")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
