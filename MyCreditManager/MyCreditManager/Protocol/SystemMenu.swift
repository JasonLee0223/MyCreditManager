//
//  SystemMenu.swift
//  MyCreditManager
//
//  Created by Jason on 2022/11/26.
//

import Foundation

protocol SystemMenu {
    func addToStudent()
    func deleteToStudent()
    func addOrChangeToGrade()
    func deleteGrade()
    func viewOfAverage()
    func exitMenu(input value: String?)
}
