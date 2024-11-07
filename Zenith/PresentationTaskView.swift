import SwiftUI

struct PresentationTaskView: View {
      @State private var presentationTime: String = ""
      @State private var finishInDays: String = ""
      @State private var selectedDays: [Bool] = Array(repeating: false, count: 7)
      let days = ["S", "M", "T", "W", "T", "F", "S"]
    
    var body: some View {
        NavigationStack{
            VStack {
                // First Rectangle with the best time for task
                VStack{
                    Text("The Best Time For My Challange 1 Is ") .bold()
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    HStack {
                        TextField("..", text: $presentationTime)
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .padding(0.2)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color.color1))
                            .frame(width: 50,height: 5)
                        Text("Hours On These Days")
                            .bold()
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                    }
                }.frame(width:320,height: 50)
                    .padding(30)
                    .background(RoundedRectangle(cornerRadius: 20))
                    .foregroundColor(.backgroundPart)
                    .padding(.top,30)
                
                Spacer().frame(height: 36)
                
                
                
                
                
                // Second Rectangle Days of the week
                VStack {
                    HStack(spacing: 10) {
                        ForEach(0..<7) { index in
                            VStack {
            Text(days[index])
                .foregroundColor(.white)
                .bold()
                                
                                
            Circle()
                                    .stroke(selectedDays[index] ? Color.color1: Color.color12, lineWidth: 5)
               .frame(width: 40, height: 40)
               .overlay(
                selectedDays[index] ? Image(systemName:"checkmark").bold()
                    .foregroundColor(.color1) : nil
                                    )
                                    .onTapGesture {
                                        selectedDays[index].toggle()
                                    }
                            }
                            
                            
                            
                        }
                    }
                }.frame(width:320,height: 50)
                    .padding(30)
                    .background(RoundedRectangle(cornerRadius: 20))
                    .foregroundColor(.backgroundPart)
                
                Spacer().frame(height: 36)
                
                
                
                
                
                // Third Rectangle with task completion time
                
                VStack{
                    Text("You Will Finish The Task On ")
                        .bold()
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    HStack {
                        TextField("..", text: $finishInDays)
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .padding(0.2)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color.color1))
                            .frame(width: 50,height: 5)
                        Text("Days")
                            .bold()
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                    }
                    
                }
                .frame(width:320,height: 50)
                .padding(30)
                .background(RoundedRectangle(cornerRadius: 20))
                .foregroundColor(.backgroundPart)
                
                Spacer().frame(height: 36)
                
                
                
                // Message asking if plan is suitable
                
                
                VStack{
                    HStack {
                        NavigationLink(destination: TaskProgressView()){
                            Text("Confirm")
                                .font(.title2)
                                .bold()
                                .frame(width: 270, height: 50)
                                .background(Color.backgroundPart)
                                .foregroundColor(.blue)
                                .cornerRadius(20)
                        
                        }
                        

                        
                    }
                    .padding(.horizontal, 50)
                }
                
                NavigationLink(destination: Main()){
                    Text("Cancel")
                        .font(.title2)
                        .bold()
                        .frame(width: 270, height: 50)
                        .background(Color.backgroundPart)
                        .foregroundColor(.blue)
                        .cornerRadius(20)
                
                }
                
                
                Spacer()
                
            }
            .padding(.bottom,60)
            .navigationTitle("Your Plan")
        }
//        .navigationBarBackButtonHidden(true)

    }//var body: some View
    
 
}//struct

#Preview {
    PresentationTaskView()
}
