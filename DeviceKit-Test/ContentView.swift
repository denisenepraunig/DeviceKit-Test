//
//  ContentView.swift
//  DeviceKit-Test
//
//  Created by Denise Nepraunig on 29.04.21.
//

import SwiftUI
import DeviceKit

struct ContentView: View {
    var body: some View {
        Text("Current Device: \(Device.current.description)")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
