//
//  ContentView.swift
//  Zenith
//
//  Created by Saffanah Aljawi on 26/03/1446 AH.
//

import SwiftUI

struct TaskProgressView: View {
    @State private var progress: Double = 0.0
    @State var isClicked = false
    @State var isClicked1 = false

    var body: some View {
        NavigationStack{
            VStack{
                VStack(alignment: .leading){
                    HStack{
                        Text("Wednesday")
                            .fontWeight(.bold)
                            .font(.system(size: 25))
                        Text("9 October, 2024")
                            .fontWeight(.light)
                            .font(.system(size: 19))
                        Image(systemName: "calendar")
                            .font(.system(size: 25))

                    }
                    Text("Today")
                        .lineLimit(100)
                }
            
                .frame(width: 326,height: 60)
                .foregroundColor(.white)
                .border(Color(.grey))
                .background(Color(.today))
                .cornerRadius(10)
                
            ZStack{
                    Circle()
                        .stroke(lineWidth: 29)
                        .opacity(1)
                        .foregroundColor(.progress2)
                    Circle()
                        .stroke(lineWidth: 20)
                        .opacity(1)
                        .foregroundColor(.progress1)
                    
                    Text(String(format: "%.0f%%", min(self.progress,1)*100))
                        .font(.system(size: 50))
                        .foregroundColor(.text1)

//                Text("Start your progress")
//                    .font(.system(size: 25))
//                    .padding(.top,100)
                    Circle()
                        .trim(from: 0.0, to: CGFloat(self.progress))
                        .stroke(style: StrokeStyle(lineWidth: 20.0, lineCap: .round, lineJoin: .round))
                        .fill(LinearGradient(colors: [.white,.blue], startPoint: .topTrailing, endPoint: .bottomTrailing))
                        .animation(Animation.linear(duration: 2.0))
                    
                    
                }
                .padding(.all, 60.0)
                VStack(alignment: .leading){
                    Button(action: {
                        isClicked.toggle()
                        if isClicked {
                            Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
                                progress += 0.5
                                if progress >= 0.5 {
                                    timer.invalidate()
                                }
                            }
                        }

                    }) {
                        HStack {
                            VStack(alignment: .leading){
                                Text("Challange 1 - Part 1")
                                    .fontWeight(.regular)
                                    .font(.system(size: 25))
                                Text("This task requires 2 hours")
                                    .fontWeight(.regular)
                                    .font(.system(size: 16))
                            }
                            
                            Spacer()
                            
                            Image(systemName: isClicked ? "checkmark.square" : "square")
                                .font(.system(size: 25))
                        }
                        .padding()
                    }
                    .frame(width: 326, height: 60)
                    .foregroundColor(.white)
                    .border(Color("backgroundPart"))
                    .background(isClicked ? .progress1 : .backgroundPart)
                    .onTapGesture {
                        isClicked.toggle()
                    }                    .cornerRadius(10)
                }
                VStack(alignment: .leading){
                    Button(action: {
                        isClicked1.toggle()
                        if isClicked1 {
                            Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
                                progress += 1
                                if progress >= 1 {
                                    timer.invalidate()
                                }
                            }
                        }

                    }) {
                        HStack {
                            VStack(alignment: .leading){
                                Text("Challange 1 - Part 2")
                                    .fontWeight(.regular)
                                    .font(.system(size: 25))
                                Text("This task requires 2 hours")
                                    .fontWeight(.regular)
                                    .font(.system(size: 16))
                            }
                            
                            Spacer()

                            Image(systemName: isClicked1 ? "checkmark.square" : "square")
                                .font(.system(size: 25))
                        }
                        .padding()
                    }
                    .frame(width: 326, height: 60)
                    .foregroundColor(.white)
                    .border(Color("backgroundPart"))
                    .background(isClicked1 ? .progress1 : .backgroundPart)
                    .onTapGesture {
                        isClicked1.toggle()
                    }
                    .cornerRadius(10)
                    
                }
                VStack{
                    NavigationLink(destination: Main()){
                        Text("Home")
                    }
                }
                .frame(width: 100,height: 40)
                .border(.color12)
                .background(.color12)
                .cornerRadius(10)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding()
                
            }
            .padding(.bottom,60)
            .navigationTitle("Challange 1")


            
        }

    }

}

#Preview {
    TaskProgressView()
}



