//
//  PatientListView.swift
//  MVVM
//
//  Created by Peter on 25/10/2023.
//

import Foundation
import SwiftUI

struct PatientListView: View {
    @ObservedObject var viewModel: PatientListViewModel
    
    var body: some View {
        List(viewModel.patients, id: \.id) { patient in
            Text(patient.name)
        }
    }
}
