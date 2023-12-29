//
//  ContentView.swift
//  InstagramExample
//
//  Created by Bolivar Cortes on 12/29/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                Divider().overlay(Color("primary")).frame(height: 1).opacity(0.4)
                ScrollView {
                    VStack {
                        storyList
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
            .padding(.leading, 20)
            .padding(.vertical, 8)
        }
    }
    
}

#Preview {
    ContentView()
}
