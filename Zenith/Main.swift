//
//  ContentView.swift
//  home
//
//  Created by Nada Abdullah on 03/04/1446 AH.
//

import SwiftUI

struct Main: View {
    @State var search: String = ""
    @State var isPresented: Bool = false
    @State var searching: Bool = false
    @State private var isActive = false

    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    HStack{
                        NavigationLink(destination: TaskProgressView()){
                            Image(systemName: "calendar.badge.clock")
                                .font(.title2)
                                .foregroundStyle(.color1)
                            
                            Text("Today")
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                            Spacer()
                            
                            Text("1")
                            
                                .font(.title2)
                                .fontWeight(.semibold)
                        }
                        
                    }
                    .padding()
                    .foregroundColor(.white)
                    .frame(width: 180,height:55)
                    .background(Color(hue: 0.667, saturation: 0.056, brightness: 0.164))
                    .cornerRadius(10)
                    
                    HStack{
                        NavigationLink(destination: AllTaskView()){
                            Image(systemName: "tray.full")
                                .font(.title2)
                                .foregroundStyle(.today)
                            
                            
                            Text("All")
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                            
                            Spacer()
                            
                            Text("6")
                                .font(.title2)
                                .fontWeight(.semibold)
                        }
                    }
                    .padding()
                    .foregroundColor(.white)
                    .frame(width: 180,height:55)
                    .background(Color(hue: 0.667, saturation: 0.056, brightness: 0.164))
                    .cornerRadius(10)
                }
                
                
                HStack{
                    HStack{
                        NavigationLink(destination: TaskProgressDoingView()){
                            Image(systemName: "checklist")
                                .font(.title2)
                                .foregroundStyle(.blue)
                            
                            
                            Text("Doing")
                                .font(.title3)
                                .fontWeight(.semibold)
                            
                            Spacer()
                            
                            Text("1")
                                .font(.title2)
                                .fontWeight(.semibold)
                        }
                    }
                    .padding()
                    .foregroundColor(.white)
                    .frame(width: 180,height:55)
                    .background(Color(hue: 0.667, saturation: 0.056, brightness: 0.164))
                    .cornerRadius(10)
                    
                    HStack{
                        NavigationLink(destination: TaskProgressDoneView()){
                            Image(systemName: "checkmark")
                                .font(.title2)
                                .foregroundStyle(.color12)
                            
                            Text("Done")
                                .font(.title3)
                                .fontWeight(.semibold)
                            
                            Spacer()
                            
                            Text("1")
                                .font(.title2)
                                .fontWeight(.semibold)
                        }
                    }
                    .padding()
                    .foregroundColor(.white)
                    .frame(width: 180,height:55)
                    .background(Color(hue: 0.667, saturation: 0.056, brightness: 0.164))
                    .cornerRadius(10)
                }
                
                
                
                HStack{
                    HStack{
                        Image(systemName: "trash")
                            .font(.title2)
                            .foregroundColor(Color(hue: 0.648, saturation: 0.76, brightness: 0.811))
                        
                        Text("Deleted")
                            .font(.title3)
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text("0")
                            .font(.title2)
                            .fontWeight(.semibold)
                    }
                    .padding()
                    .foregroundColor(.white)
                    .frame(width: 180,height:55)
                    .background(Color(hue: 0.667, saturation: 0.056, brightness: 0.164))
                    .cornerRadius(10)
                    
                    HStack{
                        Image(systemName: "plus.rectangle")
                            .font(.title2)
                            .foregroundColor(Color(hue: 0.499, saturation: 0.722, brightness: 0.508, opacity: 100.0))
                        
                        Text("Add List")
                            .font(.title3)
                            .fontWeight(.semibold)
                        
                        
                        Spacer()
                    }
                    .padding()
                    .foregroundColor(.white)
                    .frame(width: 180,height:55)
                    .background(Color(red: 0.155, green: 0.155, blue: 0.164))
                    .cornerRadius(10)
                }
                
                
                
                
                
                Spacer()
                
                HStack{
                    VStack{
                        Text("4")
                            .font(.system(size: 50)) // Custom font size
                            .fontWeight(.bold)
                            .foregroundColor(.color1)
                        
                        
                        Text("Let’s make today")
                            .font(.headline)
                            .fixedSize(horizontal: false, vertical: true)
                            .fontWeight(.medium)
                            .multilineTextAlignment(.center)
                        
                        
                        Text("a productive one")
                            .font(.headline)
                            .fixedSize(horizontal: false, vertical: true)
                            .fontWeight(.medium)
                            .multilineTextAlignment(.center)
                        Spacer()
                        
                        Text("Acheivments")
                            .font(.title2)
                            .fontWeight(.bold)
                    }
                    .padding()
                    .foregroundColor(.white)
                    .frame(width: 180,height:150)
                    .background(.color12.opacity(0.6))
                    
                    .cornerRadius(10)
                    VStack{
                        HStack{
                            VStack{
                                Text("Days    ")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                    .multilineTextAlignment(.leading)
                                
                                Text("Streak")
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                    .multilineTextAlignment(.leading)
                            }
                            Spacer()
                            
                            Text("20")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            
                        }
                        .padding()
                        .foregroundColor(.white)
                        .frame(width: 180,height:71)
                        .background(.color12)
                        .cornerRadius(10)
                        
                        HStack{
                            VStack{
                                Text("Days    ")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                    .multilineTextAlignment(.leading)
                                
                                Text("Total   ")
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                    .multilineTextAlignment(.leading)
                            }
                            Spacer()
                            
                            Text("20")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            
                        }
                        .padding()
                        .foregroundColor(.white)
                        .frame(width: 180,height:71)
                        .background(.color1)
                        .cornerRadius(10)
                    }
                }
                
                Spacer()
                
                NavigationLink(destination: PlanView()){
                    
                    Text(Image(systemName: "plus.circle.fill"))
                        .font(.system(size: 60)) // Custom font size
                        .frame(maxWidth: .infinity,alignment: .bottom)
                        .controlSize(ControlSize.extraLarge)
                }
                .padding()
                
                
            }
            .searchable(text: $search, prompt: "Search")
                }
        .navigationBarBackButtonHidden(true)

            }
        }
    

#Preview {
    Main()
}

