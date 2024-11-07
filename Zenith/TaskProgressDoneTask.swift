//
//  ContentView.swift
//  Zenith
//
//  Created by Saffanah Aljawi on 26/03/1446 AH.
//

import SwiftUI

struct TaskProgressDoneView: View {
    @State private var progress: Double = 1
    @State var isClicked = false
    @State var isClicked1 = false
    var body: some View {
        NavigationStack{
            VStack{
                VStack(alignment: .leading){
                    HStack{
                        Text("Thursday")
                            .fontWeight(.bold)
                            .font(.system(size: 25))
                        Text("10 October, 2024")
                            .fontWeight(.light)
                            .font(.system(size: 19))
                        Image(systemName: "calendar")
                            .font(.system(size: 25))

                    }
                    Text("Done")
                        .lineLimit(100)
                }
                .frame(width: 326,height: 60)
                .foregroundColor(.white)
                .border(Color("Done"))
                .background(Color("Done"))
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

                    Circle()
                        .trim(from: 0.0, to: CGFloat(self.progress))
                        .stroke(style: StrokeStyle(lineWidth: 20.0, lineCap: .round, lineJoin: .round))
                        .fill(LinearGradient(colors: [.white,.blue], startPoint: .topTrailing, endPoint: .bottomTrailing))

                    
                    
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
                            
                            Image(systemName:"checkmark.square")
                                .font(.system(size: 25))
                        }
                        .padding()
                    }
                    .frame(width: 326, height: 60)
                    .foregroundColor(.white)
                    .border(Color("part"))
                    .background(.progress1)
                    .onTapGesture {
                        isClicked.toggle()
                    }
                    .cornerRadius(10)
                }
                VStack(alignment: .leading){
                    Button(action: {
                        if isClicked1 {
                            Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
                                progress += 1
                                if progress >= 1 {
                                    timer.invalidate()
                                }
                            }
                        }

                    })
                    {
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

                            Image(systemName:"checkmark.square")
                                .font(.system(size: 25))
                        }
                        .padding()
                    }
                    .frame(width: 326, height: 60)
                    .foregroundColor(.white)
                    .border(Color("part"))
                    .background(.progress1)
                    .onTapGesture {
                        isClicked1.toggle()
                    }
                    .cornerRadius(10)
                    
                }
                
            }
            .padding(.bottom,60)
            .navigationTitle("Challange 1")
            
        }
        .foregroundColor(.white)
    }

}

#Preview {
    TaskProgressDoneView()
}


