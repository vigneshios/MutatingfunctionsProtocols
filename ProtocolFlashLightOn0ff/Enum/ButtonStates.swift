//
//  ButtonStates.swift
//  ProtocolFlashLightOn0ff
//
//  Created by Apple on 05/03/18.
//  Copyright © 2018 vicky. All rights reserved.
//

import Foundation
import AVFoundation

enum ButtonStates: Toggleable {
    case on
    case off
    
    mutating func toggle() {
        switch self {
        case .off:
            self = .on
        case .on:
            self = .off
        }
    }
    
}
