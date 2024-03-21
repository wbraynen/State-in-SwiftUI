//
//  ContentView.swift
//  TestApp
//
//  Created by Will on 3/21/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: CounterDetailView()) {
                    Text("Counter demo")
                }
                NavigationLink(destination: CounterDetailView()) {
                    Text("Favorite primes")
                }
            }
            .navigationBarTitle("Counter demo")
        }
    }
}

struct CounterDetailView: View {
    @State var counter = 0

    var body: some View {
        VStack {
            HStack {
                Button(action: {self.counter -= 1}) {
                    Text("-")
                }
                Text("\(self.counter)")
                Button(action: {self.counter += 1}) {
                    Text("+")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
