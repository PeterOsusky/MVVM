//
//  ContentView.swift
//  MVVM
//
//  Created by Peter on 25/10/2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var localPatientRepository = LocalPatientRepository()
    @ObservedObject var externalPatientRepository = ExternalPatientRepository()

    var body: some View {
        // Create ViewModel instances
        let patientListViewModelLocal = PatientListViewModel(patientRepository: localPatientRepository)
        let patientListViewModelExternal = PatientListViewModel(patientRepository: externalPatientRepository)

        // Use the ViewModel instances
        VStack{
            PatientListView(viewModel: patientListViewModelLocal)
            PatientListView(viewModel: patientListViewModelExternal)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
