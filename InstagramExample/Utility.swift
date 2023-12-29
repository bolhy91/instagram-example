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
                .renderingMode(.template)
                .foregroundColor(Color("primary"))
        }
    }
    ToolbarItem(placement: .principal) {
        Image("instagram-logo")
            .renderingMode(.template)
            .foregroundColor(Color("primary"))
    }
    ToolbarItem(placement: .navigationBarTrailing) {
        HStack{
            Button(action: {}) {
                Image("igtv")
                    .renderingMode(.template)
                    .foregroundColor(Color("primary"))
            }
            Button(action: {}) {
                Image("messanger")
                    .renderingMode(.template)
                    .foregroundColor(Color("primary"))
            }
        }
    }
}
