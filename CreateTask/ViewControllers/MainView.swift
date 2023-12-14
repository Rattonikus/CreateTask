//
//  ContentView.swift
//  CreateTask
//
//  Created by Elkins, Cameron on 12/14/23.
//

import SwiftUI

struct MainView: View 
{
    @State private var backgroundColor : Color = .black

    var body: some View
    {
        
        ZStack 
        {
            backgroundColor
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack 
            {
                HStack
                {
                    
                    Button("1", action: placeholder)
                        .buttonStyle(.bordered)
                        .clipShape(Circle())
                        .frame(maxWidth: .infinity)
                        .controlSize(.large)
                        .tint(Color.white)
                        .font(.system(size: 50))
                        
                    Button("2", action: placeholder)
                        .buttonStyle(.bordered)
                        .controlSize(.large)
                        .tint(Color.white)
                        .clipShape(Circle())
                        .frame(maxWidth: .infinity)
                        .font(.system(size: 50))

                    Button("3", action: placeholder)
                        .buttonStyle(.bordered)
                        .controlSize(.large)
                        .tint(Color.white)
                        .clipShape(Circle())
                        .frame(maxWidth: .infinity)
                        .font(.system(size: 50))

                    Button("+", action: placeholder)
                        .buttonStyle(.bordered)
                        .background(Color.orange)
                        .controlSize(.large)
                        .tint(Color.white)
                        .clipShape(Circle())
                        .frame(maxWidth: .infinity)
                        .font(.system(size: 50))

            }
                HStack
                {
                    Button("0", action: placeholder)
                        .buttonStyle(.bordered)
                        .tint(.white)
                        .clipShape(.capsule)
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                        .font(.system(size: 50))


                }
            }
        }
        
    }
    
    func placeholder()
    {
        
    }
    
}

#Preview 
{
    MainView()
}
