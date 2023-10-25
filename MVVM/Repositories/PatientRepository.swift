//
//  PatientRepository.swift
//  MVVM
//
//  Created by Peter on 25/10/2023.
//

import Foundation
import Combine

protocol PatientRepository: ObservableObject {
    func fetchPatients() -> AnyPublisher<[Patient], Error>
}
