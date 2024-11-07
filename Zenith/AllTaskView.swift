//
//  AllTaskView.swift
//  Zenith
//
//  Created by Saffanah Aljawi on 30/03/1446 AH.
//


import SwiftUI
struct AllTaskView: View {
    @State private var isChecked = false
    @State private var isChecked1 = false
    @State private var isChecked2 = false
    @State private var isChecked3 = false


    var body: some View {
        NavigationStack {
            VStack{
               
                VStack{
                    VStack(alignment: .leading){
                        HStack{
                            Button(action: {
                                isChecked.toggle()
                            }) {
                              Text("Challange 1")
                                    .font(.title)
                                    .font(.system(size: 18))
                                    .foregroundColor(Color.white)
                            }
                            Spacer()
                            Image(systemName: "checkmark.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.white)
                            
                        }
                       Text("Done")
                    }
                    .padding()
                    .frame(width: 349, height: 80)
                    .foregroundColor(.white)
                    .border(Color.black)
                    .background(Color(.done))
                    .cornerRadius(10)
                    
                    VStack(alignment: .leading){
                        HStack{
                            Button(action: {
                                isChecked.toggle()
                            }) {
                              Text("PMP Certification")
                                    .font(.title)
                                    .font(.system(size: 18))
                                    .foregroundColor(Color.white)
                            }
                            Spacer()
                            Image(systemName: "checkmark.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.white)
                            
                        }
                       Text("Done")
                    }
                    .padding()
                    .frame(width: 349, height: 80)
                    .foregroundColor(.white)
                    .border(Color.black)
                    .background(Color(.done))
                    .cornerRadius(10)
                    
                    
                    VStack(alignment: .leading){
                        HStack{
                            Button(action: {
                                isChecked.toggle()
                            }) {
                              Text("Presenation")
                                    .font(.title)
                                    .font(.system(size: 18))
                                    .foregroundColor(Color.white)
                            }
                            Spacer()
                            Image(systemName: "checkmark.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.white)
                            
                        }
                       Text("Done")
                    }
                    .padding()
                    .frame(width: 349, height: 80)
                    .foregroundColor(.white)
                    .border(Color.black)
                    .background(Color(.done))
                    .cornerRadius(10)
                    
                    
                    VStack(alignment: .leading){
                        HStack{
                            Button(action: {
                                isChecked1.toggle()
                            }) {
                                
                                Text("Python Project")
                                    .font(.title)
                                    .font(.system(size: 18))
                                
                            }
                            Spacer()

                            Image(systemName:"checkmark.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.white)
                            
                        }
                        Text("Done")
                        
                    }
                    .padding()
                    .frame(width: 349, height: 80)
                   .foregroundColor(.white)
                    .border(Color.black)
                    .background(Color(.done))
                    .cornerRadius(10)
                    
                    
                    
                    VStack(alignment: .leading){
                        HStack{
                            Button(action: {
                                isChecked2.toggle()
                            }) {
                                Text("Design prototype")
                                    .font(.title)
                                    .font(.system(size: 18))
                                
                            }
                            Spacer()
                            Image(systemName:"list.bullet.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                                .foregroundColor( .white)
                            
                            
                        }
                        Text("Doing")

                    }
                    .padding()
                    .frame(width: 349, height: 80)
                    .foregroundColor(.white)
                    .border(Color.black)
                    .background(Color(.doing))
                    .cornerRadius(10)
                    
                    VStack(alignment: .leading){
                        HStack{
                            Button(action: {
                                isChecked3.toggle()
                            }) {
                                
                                Text("Hakathon")
                                    .font(.title)
                                    .font(.system(size: 18))
                                
                            }
                            Spacer()
                            Image(systemName: "checkmark.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                               .foregroundColor (.white)
                            
                        }
                        Text("Start date 19 October, 2024")
                        
                    }
                    .padding()
                    .foregroundColor(.white)
                    .frame(width: 349, height: 80)
                   // .foregroundColor(.white)
                    .border(Color(.doing), width: 3.5)
                    .cornerRadius(10)
                    
                    
                }
                .padding(.bottom, 120)
                
                
            }
                .navigationTitle("All Tasks")
        }
        }
        
    }


 #Preview {
     AllTaskView()
 }

