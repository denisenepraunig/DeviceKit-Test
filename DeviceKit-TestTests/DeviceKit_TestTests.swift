//
//  DeviceKit_TestTests.swift
//  DeviceKit-TestTests
//
//  Created by Denise Nepraunig on 29.04.21.
//

import XCTest
import DeviceKit
@testable import DeviceKit_Test

class DeviceKit_TestTests: XCTestCase {

    let device = Device.current

    func testDeviceSimulator() {
      XCTAssertTrue(device.isOneOf(Device.allSimulators))
    }
}
