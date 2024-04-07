//
//  AddView.swift
//  TaskTracker
//
//  Created by Narayan Shettigar on 07/04/24.
//

import SwiftUI

struct AddView: View {
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var listViewModel : ListViewModel
    @State var textFieldText = ""
    @State var showAlert : Bool = false
    @State var alertTitle : String = ""
    var body: some View {
        ScrollView{
            VStack{
                TextField("Type here", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                
                Button(action: {
                    saveButtonPressed()
                }, label: {
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
        .navigationTitle("Add an Item ✏️")
        .alert(isPresented: $showAlert, content: getAlert)
    }
    
    func saveButtonPressed(){
        if textIsAppropriate() {
            listViewModel.addItem(title: textFieldText)
            dismiss()
        }
    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count < 3 {
            alertTitle = "Task must be at least of 3 char"
            showAlert.toggle()
            return false
        }
        return true
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
                .environmentObject(ListViewModel())
        }
    }
}
