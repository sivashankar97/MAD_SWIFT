//
//  PickerView.swift
//  SwiftUIDemo

import SwiftUI

struct PickerView: View {
    
    var strengths = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten"]
    
    @State private var selectedStrength = 0
    @State var minimumSelectedDate = Date()
    @State var maximumSelectedDate = Date()
    @State var testDate = Date()
    
    var body: some View {
        
        NavigationView {
        
            Form {
                Section {
                    Picker(selection: $selectedStrength, label: Text("Strength")) {
                        ForEach(0 ..< strengths.count) {
                            Text(self.strengths[$0])

                        }
                    }
                }

                // for minimum date
                DatePicker("Minimum Date",
                           selection: $minimumSelectedDate,
                           in: Date()...,
                           displayedComponents: [.date])

                // for maximum date
                DatePicker("Maximum Date",
                           selection: $maximumSelectedDate,
                           in: ...Date(),
                           displayedComponents: [.date])

                // for select date
                DatePicker("Test Date",
                           selection: $testDate,
                           displayedComponents: [.date])


            }.navigationBarTitle("Select Number")


        }
        
    }
    
}


#if DEBUG
struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
#endif
