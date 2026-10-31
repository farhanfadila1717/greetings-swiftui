//
//  EnvironmentValues.swift
//  Greetings
//
//  Created by Farhan Fadila on 31/10/26.
//

import SwiftUI

extension EnvironmentValues {
    var isPortraitPhone: Bool {
        horizontalSizeClass == .compact &&
        verticalSizeClass == .regular
    }

    var isIPad: Bool {
        horizontalSizeClass == .regular &&
        verticalSizeClass == .regular
    }
}
