//
//  testView.swift
//  CreateTask
//
//  Created by Cameron Elkins on 12/16/23.
//

import SwiftUI

enum CalcButton: String
{
    case one
    case two
    case three
    case four
    case five
    case six
    case seven
    case eight
    case nine
    case zero
    case add
    case subtract
    case divide
    case multiply
    case equal
    case clear
    case decimal
    case percent
    case negative
}

struct testView: View 
{
    let buttons: [[CalcButton]] =
    [
        [.seven, .eight, .nine]
    ]
    
    var body: some View
    {
        ZStack
        {
            Color.black
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack
            {
                HStack
                {
                    //Text disp
                    Spacer()
                    Text("0")
                        .bold()
                        .font(.system(size: 64))
                    .foregroundColor(.white)
                }
                .padding()
                
                //VSTACK
                ForEach(buttons, id: \.self)
                {
                    row in
                    
                    HStack 
                    {
                        ForEach(row, id: \.self)
                        {
                            item in
                            
                            Button(action: {}, label: {Text(item.rawValue)})
                                .frame(width: 70, height: 70)
                                .background(Color.orange)
                                .foregroundColor(.white)
                                .cornerRadius(35)
                    }
                    }
                }
            }
        }
    }
}

#Preview {
    testView()
}
