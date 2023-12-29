//
//  Utility.swift
//  InstagramExample
//
//  Created by Bolivar Cortes on 12/29/23.
//

import Foundation
import SwiftUI

@ToolbarContentBuilder
func toolbarView() -> some ToolbarContent {
    ToolbarItem(placement: .navigationBarLeading) {
        Button(action: {}) {
            Image("camera-Icon")
        }
    }
    ToolbarItem(placement: .principal) {
        Image("instagram-logo")
    }
    ToolbarItem(placement: .navigationBarTrailing) {
        HStack{
            Button(action: {}) {
                Image("igtv")
            }
            Button(action: {}) {
                Image("messanger")
            }
        }
    }
}
