//
//  TimelineView.swift
//  InstagramExample
//
//  Created by Bolivar Cortes on 12/29/23.
//

import SwiftUI

struct TimelineView: View {
    let timeline: TimelineModel
    var body: some View {
        VStack {
            self.headerView
            self.postImage
            self.actionIcon
            self.postLike
            self.commentSection
        }.padding(.top, 4)
    }
    
    var commentSection : some View {
        HStack {
            Text(timeline.user.username).bold()
            + Text("\(CommentModel.getComments().randomElement()!.comment)")
        }
        .font(.system(size: 13))
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 14)
    }
    
    
    var postLike : some View {
        HStack {
            Image(UserModel.getUsers().randomElement()!.profilePicture)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 17, height: 17)
                .clipShape(Circle())
            Text("Liked by ")
            + Text(UserModel.getUsers().randomElement()!.username)
            + Text(" and ")
            + Text("44,000").bold()
            + Text(" others").bold()
        }
        .font(.system(size: 13))
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 14)
    }
    
    
    var actionIcon: some View {
        HStack(spacing: 17) {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Image("like")
                    .renderingMode(.template)
                    .foregroundColor(Color("primary"))
            }
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Image("comment")
                    .renderingMode(.template)
                    .foregroundColor(Color("primary"))
            }
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Image("messanger")
                    .renderingMode(.template)
                    .foregroundColor(Color("primary"))
            }
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Image("save")
                    .renderingMode(.template)
                    .foregroundColor(Color("primary"))
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 14)
    }
    
    
    var postImage : some View {
        Image(timeline.photo)
            .resizable()
            .frame(height: UIScreen.main.bounds.width)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .aspectRatio(contentMode: .fill)
    }
    
    
    var headerView : some View {
        HStack{
            Image(timeline.user.profilePicture)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 32, height: 32)
                .clipShape(Circle())
            VStack(alignment: .leading, spacing: 2){
                HStack {
                    Text(timeline.user.username)
                        .font(.system(size: 13, weight: .bold))
                    if timeline.user.isVerified {
                        Image("official-icon")
                            .resizable()
                            .frame(width: 10, height: 10)
                    }
                }
                Text(timeline.user.city)
                    .font(.system(size: 11))
            }
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image("more-icon")
                    .renderingMode(.template)
                    .foregroundColor(Color("primary"))
            })
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
        .padding(.horizontal, 14)
    }
    
}

#Preview {
    TimelineView(timeline: TimelineModel.getPosts()[0])
}
