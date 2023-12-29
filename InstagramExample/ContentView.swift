//
//  ContentView.swift
//  InstagramExample
//
//  Created by Bolivar Cortes on 12/29/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var viewModel = ViewModel()
    
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(named: "tabBar-bg")
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                Divider().overlay(Color("primary")).frame(height: 1).opacity(0.4)
                ScrollView {
                    VStack {
                        storyList
                        Divider().overlay(Color("primary")).frame(height: 1).opacity(0.4)
                        ForEach(viewModel.timelineList) { item in
                            TimelineView(timeline: item)
                        }
                        Color.clear.padding(.bottom, 30)
                    }.toolbar {
                        toolbarView()
                    }
                }
            }.navigationBarTitleDisplayMode(.inline)
        }
    }
    
    var storyList: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(viewModel.storyList) { item in
                    StoryView(story: item)
                }
            }
            .padding(.leading, 10)
            .padding(.vertical, 8)
        }
    }
    
}

#Preview {
    ContentView()
}
