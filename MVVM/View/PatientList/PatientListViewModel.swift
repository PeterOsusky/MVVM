//
//  PatientListViewModel.swift
//  MVVM
//
//  Created by Peter on 25/10/2023.
//

import Foundation
import Combine

class PatientListViewModel: ObservableObject {
    @Published var patients: [Patient] = []
    private var cancellables: Set<AnyCancellable> = []
    
    private let patientRepository: any PatientRepository
    
    init(patientRepository: any PatientRepository) {
        self.patientRepository = patientRepository
        fetchPatients()
    }
    
    func fetchPatients() {
        patientRepository.fetchPatients()
            .sink(receiveCompletion: { _ in
                // Error check
            }, receiveValue: { [weak self] patients in
                self?.patients = patients
            })
            .store(in: &cancellables)
    }
}
