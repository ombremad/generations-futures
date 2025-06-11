//
//  MiniCalendarView.swift
//  generations-futures
//
//  Created by Apprenant156 on 10/06/2025.
//

import SwiftUI
import EventKit

struct MiniCalendarView: View {
    var calendar = Calendar.current
    var month: Date
    var events: [EKEvent]
    var selectedDate: Date?
    var onSelectDate: (Date) -> Void

    private var daysInMonth: [Date] {
        guard let range = calendar.range(of: .day, in: .month, for: month),
              let monthStart = calendar.date(from: calendar.dateComponents([.year, .month], from: month)) else {
            return []
        }

        return range.compactMap { day in
            calendar.date(byAdding: .day, value: day - 1, to: monthStart)
        }
    }

    var body: some View {
        let columns = Array(repeating: GridItem(.flexible()), count: 7)
        LazyVGrid(columns: columns, spacing: 8) {
            ForEach(daysInMonth, id: \.self) { date in
                let hasEvent = events.contains { calendar.isDate($0.startDate, inSameDayAs: date) }
                let isSelected = selectedDate != nil && calendar.isDate(date, inSameDayAs: selectedDate!)

                Text(String(calendar.component(.day, from: date)))
                    .frame(width: 32, height: 32)
                    .background(
                        isSelected ? Color.accentColor :
                        (hasEvent ? Color.red.opacity(0.3) : Color.green.opacity(0.3))
                    )
                    .clipShape(Circle())
                    .onTapGesture {
                        if !hasEvent {
                            onSelectDate(date)
                        }
                    }
            }
        }
    }
}
