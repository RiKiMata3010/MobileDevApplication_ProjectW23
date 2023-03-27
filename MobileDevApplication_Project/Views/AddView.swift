//
//  AddView.swift
//  MobileDevApplication_Project
//
//  Created by Phoenix Armand Ani on 2023-03-22.
//

import SwiftUI

struct AddView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel : ListViewModel
    @State var textFieldtext: String = ""
    @State var alertTitle : String = ""
    @State var showAlert : Bool = false
    @State var selectedDate : Date = Date()
    
    let myColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
    
    var body: some View {
        ScrollView{
            VStack {
                TextField("Type new task", text: $textFieldtext)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(myColor))
                    .cornerRadius(10)
                DatePicker("Select a Due Date", selection: $selectedDate, displayedComponents: .date)
                DatePicker("Select a Due Time", selection: $selectedDate, displayedComponents: .hourAndMinute)
                Button(action: saveButton, label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .padding(14)
        }
        .navigationTitle("Add a New Task")
        .alert(isPresented: $showAlert, content: getAlert)
    }
    func saveButton(){
        if textIsAppropriate(){
            listViewModel.addItem(title: textFieldtext)
            presentationMode.wrappedValue.dismiss()
        }
    }
    func textIsAppropriate() -> Bool{
        if textFieldtext.count < 3{
            alertTitle = "Item must be more than 3 characters"
            showAlert.toggle()
            return false
        }
        return true
    }
    func getAlert() -> Alert{
        return Alert(title: Text(alertTitle))
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddView()
        }
        .environmentObject(ListViewModel())
    }
}
