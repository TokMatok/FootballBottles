//
//  ViewController.swift
//  FootballBottles
//
//  Created by Golyakovph on 10.12.2022.
//

import UIKit

class CalendarVC: UIViewController {

            
    override func viewDidLoad() {
            super.viewDidLoad()
            configureCalendar()
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bg")
        self.view.insertSubview(backgroundImage, at: 0)

        }

    @IBOutlet weak var calendarLabel: UILabel!
    
        private func configureCalendar() {
            let calendarView = UICalendarView()
            calendarView.calendar = .current
            calendarView.locale = .current

            calendarView.visibleDateComponents = DateComponents(calendar: .current, year: 2022, month: 5)

            calendarView.fontDesign = .rounded
            calendarView.backgroundColor = .white
            calendarView.layer.cornerRadius = 16

            let dateSelection = UICalendarSelectionMultiDate(delegate: self)
            calendarView.selectionBehavior = dateSelection
            calendarView.tintColor = .black

            calendarView.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(calendarView)

            NSLayoutConstraint.activate([
                calendarView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
                calendarView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
                calendarView.topAnchor.constraint(equalTo: calendarLabel.bottomAnchor, constant: 60),
                calendarView.heightAnchor.constraint(equalToConstant: 330)
            ])
        }
    }

    extension CalendarVC: UICalendarSelectionMultiDateDelegate {
        func multiDateSelection( _ selection: UICalendarSelectionMultiDate, didDeselectDate dateComponents: DateComponents) {

        }

        func multiDateSelection( _ selection: UICalendarSelectionMultiDate, didSelectDate dateComponents: DateComponents) {

        }

        func multiDateSelection( selection: UICalendarSelectionMultiDate, canSelectDate dateComponents: DateComponents) -> Bool {
            false
        }

        
        
    @IBAction func menuDismiss(_ sender: Any) {
        dismiss(animated: true)
    }

}


