//
//  testView.swift
//  CreateTask
//
//  Created by Cameron Elkins on 12/16/23.
//

import SwiftUI

enum CalcButton: String
{
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case zero = "0"
    case add = "+"
    case subtract = "-"
    case divide = "÷"
    case multiply = "×"
    case equal = "="
    case clear = "AC"
    case decimal = "."
    case percent = "%"
    case negative = "-/+"
    
    var buttonColor : Color
    {
        switch self
        {
        case .add, .subtract, .multiply, .divide, .equal:
            return .orange
        case .clear, .negative, .percent:
            return Color(.lightGray)
        default:
            return Color(red: 55/255.0, green: 55/255.0, blue: 55/255.0)
        
        }
    }
    
    var textColor : Color
    {
        switch self
        {
        case .clear, .percent, .negative:
            return Color(.black)
        default:
            return Color(.white)
        }
    }
}

struct testView: View 
{
    let buttons: [[CalcButton]] =
    [
        [.clear, .negative, .percent, .divide],
        [.seven, .eight, .nine, .multiply],
        [.four, .five, .six, .add],
        [.one, .two, .three, .subtract],
        [.zero, .decimal, .equal],
    ]
    
    @State var displayVal = "0"
    
    var body: some View
    {
        ZStack
        {
            Color.black
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack
            {
                Spacer()
                HStack
                {
                    //Text disp
                    Spacer()
                    Text(displayVal)
                        .bold()
                        .font(.system(size: 64))
                    .foregroundColor(.white)
                }
                .padding()
                
                //VSTACK
                ForEach(buttons, id: \.self)
                {
                    row in
                    
                    HStack(spacing: 12)
                    {
                        ForEach(row, id: \.self)
                        {
                            item in
                            
                            Button(action:
                                {
                                    didPress(button: item)
                                },
                                   label: 
                                {
                                if item == .zero
                                {
                                    Text("   " + item.rawValue)
                                }
                                else
                                {
                                    Text(item.rawValue)
                                }
                                })
                                .font(.system(size:40))
                                .bold()
                                .frame(width: self.buttonWidth(item: item), height: self.buttonHeight(), alignment: buttonAlign(item: item))
                                .background(item.buttonColor)
                                .foregroundColor(item.textColor)
                                .cornerRadius(self.buttonWidth(item: item)/2)
                    }
                        .padding(.bottom, 4)
                        
                    }
                }
            }
        }
    }
    
    
    func didPress(button: CalcButton)
    {
        switch button
        {
        case .divide, .multiply, .add, .subtract, .equal:
            break
        case .clear:
            displayVal = "0"
        case  .negative, .percent:
            break
        default:
            let number = button.rawValue
            if displayVal == "0"
            {
                displayVal = number
            }
            else
            {
                displayVal = "\(displayVal)\(number)"
            }
            
        }
    }
    
    func buttonWidth(item: CalcButton) -> CGFloat
    {
        if item == .zero
        {
            return (UIScreen.main.bounds.width - (5*12)) / 4 * 2
        }
       
        return (UIScreen.main.bounds.width - (5*12)) / 4
    }
    
    func buttonHeight() -> CGFloat
    {
        
        return (UIScreen.main.bounds.width - (5*12)) / 4
    }
    
    func buttonAlign(item : CalcButton) -> Alignment
    {
        if item == .zero
        {
            return .leading
        }
        
        return .center
    }
    
   
}

#Preview {
    testView()
}
