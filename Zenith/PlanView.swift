//

import SwiftUI

struct PlanView: View {
        
    @State var time = Date()


            @State private var taskName: String = ""
            @State private var description: String = ""
            @State private var startDate: Date = Date()
            @State private var endDate: Date = Date()
            @State private var difficulty: String = "Easy"
            
    var body: some View {
        NavigationStack {
            VStack{
                TextField("", text: $taskName, prompt: Text("Name the task").foregroundColor(.grey))
                    .padding()
                    .background(Color.label)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                
                
                TextField("", text: $description,prompt: Text("Hours you need to finish").foregroundColor(.gray))
                    .foregroundColor(.white) // black text for date picker
                    .padding()
                    .background(Color.label)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                
                
                VStack{
                    HStack{
                        VStack{
                            DatePicker("Start date :", selection: $startDate,displayedComponents: .date)
                        }
                    }
                    .padding()
                    .font(.system(size: 20))
                    .frame(width: 330,height: 70)
                    .border(Color.label)
                    .background(.label)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    
                    
                    
                    HStack{
                        VStack{
                            DatePicker("End date :", selection: $endDate,displayedComponents: .date)
                        }
                    }
                    .padding()
                    .font(.system(size: 20))
                    .frame(width:330,height: 70)
                    .border(Color.label)
                    .background(.label)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    
                }
                
                
                VStack{
                    
                    Text("*Choose the difficulty of your task:*")
                        .foregroundColor(.gray)
                        .padding()
                    HStack{
                        ForEach(["Easy", "Mid", "Hard"], id: \.self) { level in
                            Button(action: {
                                difficulty = level
                            }) {
                                Text(level)
                                    .frame(maxWidth: .infinity)
                            }
                            .padding()
                            .background(difficulty == level ? Color.label : Color.gray.opacity(0.3))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                        }
                    }
                    .padding()
                    
                }
                NavigationLink(destination: SuggestedPlanView()){
                    Text("Create a plan")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .frame(width:210,height: 30)
                        .padding()
                        .background(Color.label)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                }
                
                
                    
                
            }
            .padding(.all,30)
            .frame(width:390,height:600)
            .border(Color.darkk)
            .background(.darkk)
            .cornerRadius(30)
            .padding(.bottom,80)
            .navigationTitle("New Task")


            
        }
    }
        }
        #Preview {
            PlanView()
                
        }

