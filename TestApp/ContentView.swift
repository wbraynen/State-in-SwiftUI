//
//  ContentView.swift
//  TestApp
//
//  Created by Will on 3/21/24.
//

import SwiftUI

struct ContentView: View {
    let state: AppState

    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: CounterDetailView(state: self.state)) {
                    Text("Counter demo")
                }
                NavigationLink(destination: CounterDetailView(state: self.state)) {
                    Text("Favorite primes")
                }
            }
            .navigationBarTitle("Counter demo")
        }
    }
}

struct CounterDetailView: View {
    let state: AppState

    var body: some View {
        VStack {
            HStack {
                Button(action: {self.state.counter -= 1}) {
                    Text("-")
                }
                Text("\(self.state.counter)")
                Button(action: {self.state.counter += 1}) {
                    Text("+")
                }
            }
        }
    }
}

#Preview {
    ContentView(state: AppState())
}
