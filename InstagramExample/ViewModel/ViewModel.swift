//
//  ViewModel.swift
//  InstagramExample
//
//  Created by Bolivar Cortes on 12/29/23.
//

import Foundation
import SwiftUI

class  ViewModel : ObservableObject {
    @Published var timelineList: [TimelineModel]
    @Published var storyList: [StoryModel]
    
    init() {
        self.timelineList = TimelineModel.getPosts()
        self.storyList = StoryModel.getStories()
    }
}
