//
//  LocalPatientRepository.swift
//  MVVM
//
//  Created by Peter on 25/10/2023.
//

import Foundation
import Combine

class LocalPatientRepository: PatientRepository {
    func fetchPatients() -> AnyPublisher<[Patient], Error> {
        // Test data
        let testPatients: [Patient] = [
            Patient(id: "1", name: "John Doe IN", age: 35),
            Patient(id: "2", name: "Jane Smith IN", age: 28),
        ]
        
        // Create publisher
        return Just(testPatients)
            .setFailureType(to: Error.self)
            .eraseToAnyPublisher()
    }
}
