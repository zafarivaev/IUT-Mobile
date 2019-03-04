//
//  ScheduleController.swift
//  IUT Mobile
//
//  Created by Zafar on 3/2/19.
//

import UIKit
import SpreadsheetView

class ScheduleViewController: UIViewController, SpreadsheetViewDataSource, SpreadsheetViewDelegate {
    @IBOutlet weak var spreadsheetView: SpreadsheetView!
    
    
    let days = ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
    let dayColors = [UIColor(red: 0.918, green: 0.224, blue: 0.153, alpha: 1),
                     UIColor(red: 0.106, green: 0.541, blue: 0.827, alpha: 1),
                     UIColor(red: 0.200, green: 0.620, blue: 0.565, alpha: 1),
                     UIColor(red: 0.953, green: 0.498, blue: 0.098, alpha: 1),
                     UIColor(red: 0.400, green: 0.584, blue: 0.141, alpha: 1),
                     UIColor(red: 0.835, green: 0.655, blue: 0.051, alpha: 1),
                     UIColor(red: 0.153, green: 0.569, blue: 0.835, alpha: 1)]
    let hours = ["9:00 AM", "9:30 AM", "10:00 AM", "10:30 AM", "11:00 AM", "11:30 AM",
                 "12:00 AM", "12:30 AM", "1:00 PM", "1:30 PM", "2:00 PM", "2:30 PM", "3:00 PM", "3:30 PM", "4:00 PM", "4:30 PM", "5:00 PM", "5:30 PM", "6:00 PM", "6:30 PM"]
    let evenRowColor = Colors.evenRowColor
    let oddRowColor = Colors.oddRowColor
    let data = [
/* MONDAY */ ["", "", "", "Calculus B201", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""],
/* TUESDAY */        ["", "", "", "", "", "", "", "", "", "", "", "Physics B202", "", "", "", "", "", "", "", ""],
/* WEDNESDAY */        ["OOP A607", "", "", "OOP Lab A514", "", "", "Curator H B304", "", "Calculus B209", "", "", "", "CED A203", "", "", "", "", "", "", ""],
/* THURSDAY */        ["Physics B210", "", "", "", "", "", "TWD A606", "", "", "", "CED B209", "", "", "", "AE B207", "", "", "", "", ""],
/* FRIDAY */        ["", "P.Exp 201/504", "", "", "", "", "", "AE A608", "", "", "", "", "", "", "", "", "", "", "", ""],
/* SATURDAY */        ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""],
/* SUNDAY */        ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        spreadsheetView.dataSource = self
        spreadsheetView.delegate = self
        
        spreadsheetView.contentInset = UIEdgeInsets(top: 4, left: 0, bottom: 4, right: 0)
        
        spreadsheetView.intercellSpacing = CGSize(width: 4, height: 1)
        spreadsheetView.gridStyle = .none
        
        spreadsheetView.register(DateCell.self, forCellWithReuseIdentifier: String(describing: DateCell.self))
        spreadsheetView.register(TimeTitleCell.self, forCellWithReuseIdentifier: String(describing: TimeTitleCell.self))
        spreadsheetView.register(TimeCell.self, forCellWithReuseIdentifier: String(describing: TimeCell.self))
        spreadsheetView.register(DayTitleCell.self, forCellWithReuseIdentifier: String(describing: DayTitleCell.self))
        spreadsheetView.register(ScheduleCell.self, forCellWithReuseIdentifier: String(describing: ScheduleCell.self))
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        spreadsheetView.flashScrollIndicators()
    }
    
    // MARK: DataSource
    
    func mergedCells(in spreadsheetView: SpreadsheetView) -> [CellRange] {
        return [
            
        /*MONDAY*/ CellRange(from: (row: 5, column: 1), to: (row: 7, column: 1)),
                
        /*TUESDAY*/ CellRange(from: (row: 13, column: 2), to: (row: 15, column: 2)),
        
        /*WEDNESDAY*/ CellRange(from: (row: 2, column: 3), to: (row: 4, column: 3)),
        CellRange(from: (row: 5, column: 3), to: (row: 7, column: 3)),
        CellRange(from: (row: 8, column: 3), to: (row: 9, column: 3)),
        CellRange(from: (row: 10, column: 3), to: (row: 12, column: 3)),
        CellRange(from: (row: 14, column: 3), to: (row: 16, column: 3)),
        
        /*THURSDAY*/ CellRange(from: (row: 2, column: 4), to: (row: 4, column: 4)),
        CellRange(from: (row: 8, column: 4), to: (row: 11, column: 4)),
        CellRange(from: (row: 12, column: 4), to: (row: 14, column: 4)),
        CellRange(from: (row: 16, column: 4), to: (row: 18, column: 4)),
        
        /*FRIDAY*/ CellRange(from: (row: 3, column: 5), to: (row: 6, column: 5)),
        CellRange(from: (row: 9, column: 5), to: (row: 11, column: 5))]
    }
    
    func numberOfColumns(in spreadsheetView: SpreadsheetView) -> Int {
        return 1 + days.count
    }
    
    func numberOfRows(in spreadsheetView: SpreadsheetView) -> Int {
        return 1 + 1 + hours.count
    }
    
    func spreadsheetView(_ spreadsheetView: SpreadsheetView, widthForColumn column: Int) -> CGFloat {
        if case 0 = column {
            return 70
        } else {
            return 120
        }
    }
    
    func spreadsheetView(_ spreadsheetView: SpreadsheetView, heightForRow row: Int) -> CGFloat {
        if case 0 = row {
            return 24
        } else if case 1 = row {
            return 32
        } else {
            return 40
        }
    }
    
    func frozenColumns(in spreadsheetView: SpreadsheetView) -> Int {
        return 1
    }
    
    func frozenRows(in spreadsheetView: SpreadsheetView) -> Int {
        return 2
    }
    
    func spreadsheetView(_ spreadsheetView: SpreadsheetView, cellForItemAt indexPath: IndexPath) -> Cell? {
        
        if case (1...(days.count + 1), 1) = (indexPath.column, indexPath.row) {
            let cell = spreadsheetView.dequeueReusableCell(withReuseIdentifier: String(describing: DayTitleCell.self), for: indexPath) as! DayTitleCell
            cell.label.text = days[indexPath.column - 1]
            cell.label.textColor = dayColors[indexPath.column - 1]
            return cell
            
        } else if case (0, 1) = (indexPath.column, indexPath.row) {
            let cell = spreadsheetView.dequeueReusableCell(withReuseIdentifier: String(describing: TimeTitleCell.self), for: indexPath) as! TimeTitleCell
            cell.label.text = "TIME"
            
            return cell
            
        } else if case (0, 2...(hours.count + 2)) = (indexPath.column, indexPath.row) {
            let cell = spreadsheetView.dequeueReusableCell(withReuseIdentifier: String(describing: TimeCell.self), for: indexPath) as! TimeCell
            cell.label.text = hours[indexPath.row - 2]
            cell.backgroundColor = indexPath.row % 2 == 0 ? evenRowColor : oddRowColor
            
            cell.layer.cornerRadius = 5
            cell.layer.borderWidth = 0
            cell.clipsToBounds = true
            return cell
            
        } else if case (1...(days.count + 1), 2...(hours.count + 2)) = (indexPath.column, indexPath.row) {
            let cell = spreadsheetView.dequeueReusableCell(withReuseIdentifier: String(describing: ScheduleCell.self), for: indexPath) as! ScheduleCell
            let text = data[indexPath.column - 1][indexPath.row - 2]
            if !text.isEmpty {
                cell.label.text = text
                let color = dayColors[indexPath.column - 1]
                cell.label.textColor = color
                cell.color = color.withAlphaComponent(0.2)
                cell.borders.top = .solid(width: 2, color: color)
                cell.borders.bottom = .solid(width: 2, color: color)

                
            } else {
                cell.label.text = nil
                cell.color = indexPath.row % 2 == 0 ? evenRowColor : oddRowColor
                cell.borders.top = .none
                cell.borders.bottom = .none
                
                cell.layer.cornerRadius = 5
                cell.layer.borderWidth = 0
                cell.clipsToBounds = true
            }
            return cell
        }
        return nil
    }
    
    /// Delegate
    
    func spreadsheetView(_ spreadsheetView: SpreadsheetView, didSelectItemAt indexPath: IndexPath) {
        print("Selected: (row: \(indexPath.row), column: \(indexPath.column))")
        
    }
}

