//
//  EventManager.swift
//  generations-futures
//
//  Created by Apprenant156 on 10/06/2025.
//

import Foundation
import EventKit

class EventManager: ObservableObject {
    private let eventStore = EKEventStore()

    init() {
        requestAccess()
    }

    func requestAccess() {
        eventStore.requestFullAccessToEvents { granted, error in
            if let error = error {
                print("Erreur d'accès complet au calendrier : \(error)")
            } else {
                print("Accès accordé : \(granted)")
            }
        }

    }

    func fetchEvents(from start: Date, to end: Date, completion: @escaping ([EKEvent]) -> Void) {
        let predicate = eventStore.predicateForEvents(withStart: start, end: end, calendars: nil)
        let events = eventStore.events(matching: predicate)
        completion(events)
    }
}
