
import SwiftUI

struct SuggestedPlanView: View {
    var body: some View {
        NavigationView{
            VStack {
               
               // First Rectangle with the best time for task
                
                Text("The Best Time For Your Challange 1 Is 2 Hours On These Days")
                   
                    .bold()
                    .frame(width:320,height: 50)
                    .foregroundColor(.white)
                    .allowsTightening(true)
                    .multilineTextAlignment(.center)
                    .padding(30)
                    .background(RoundedRectangle(cornerRadius: 20))
                    .foregroundColor(.backgroundPart)
                    .padding(.top,30)

                
                    Spacer().frame(height: 36)
              
                // Days of the week with check marks
                HStack(spacing: 18) {
                    ForEach(0..<7) { index in
                        VStack {
                            Text(dayLetter(for: index))
                                .foregroundColor(.white)
                                .bold()
                            
                            if index == 3 || index == 4{
                                Image(systemName: "checkmark.circle")
                                    .bold()
                                    .foregroundColor(.color1)
                                    .font(.title)
                                    
                            } else {
                                Image(systemName: "circle")
                                    .bold()
                                    .foregroundColor(.color12)
                                    .font(.title)
                            }
                        }
                    }
                }.frame(width:320,height: 50)
                .padding(30)
                    .background(RoundedRectangle(cornerRadius: 20))
                    .foregroundColor(.backgroundPart)
                
                Spacer().frame(height: 36)
                // Second Rectangle with task completion time
                Text("You Will Finish The Task On 2 Days")
                    .bold()
                    .frame(width:320,height: 50)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(30)
                    .background(RoundedRectangle(cornerRadius: 20))
                    .foregroundColor(.backgroundPart)
              
            
                Spacer().frame(height: 36)
                
                // Message asking if plan is suitable
                Text("Is This Plan Suitable?")
                    .bold()
                   
                    .font(.system(.headline,design: .rounded))
                    .foregroundColor(.white)
                
                // Yes and No Buttons
                HStack {
                    NavigationLink(destination: TaskProgressView()){
                    Text("Yes")
                        .font(.title2)
                        .bold()
                        .frame(width: 100, height: 40)
                        .background(Color.backgroundPart)
                        .foregroundColor(.blue)
                        .cornerRadius(10)
                    }
                    
                    Spacer()
                    NavigationLink(destination: PresentationTaskView()){
                        Text("No")
                            .font(.title2)
                            .bold()
                            .frame(width: 100, height: 40)
                            .background(Color.backgroundPart)
                            .foregroundColor(.blue)
                            .cornerRadius(10)
                    }
                    
                }
                .padding(.horizontal, 50)
                .padding(.bottom, 30)
                
                Spacer()
                
                
            }
            .padding(.bottom,60)
            .navigationTitle("Suggested Plan")
                
           
        }
        .navigationBarBackButtonHidden(true)
       
    }
    
    // Helper function to get the day letter
    func dayLetter(for index: Int) -> String {
        let days = ["S", "M", "T", "W", "T", "F", "S"]
        return days[index]
    }
}



#Preview {
    SuggestedPlanView()
}
