//
//  ExternalPatientRepository.swift
//  MVVM
//
//  Created by Peter on 25/10/2023.
//

import Foundation
import Combine

class ExternalPatientRepository: PatientRepository {
    func fetchPatients() -> AnyPublisher<[Patient], Error> {
        // Test data
        let testPatients: [Patient] = [
            Patient(id: "1", name: "John Doe EX", age: 35),
            Patient(id: "2", name: "Jane Smith EX", age: 28),
        ]
        
        // Create publisher
        return Just(testPatients)
            .setFailureType(to: Error.self)
            .eraseToAnyPublisher()
    }
}
