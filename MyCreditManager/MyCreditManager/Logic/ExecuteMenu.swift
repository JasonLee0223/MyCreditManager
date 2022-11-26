//
//  ExecuteMenu.swift
//  MyCreditManager
//
//  Created by Jason on 2022/11/26.
//

import Foundation

class ExecuteMenu: SystemMenu {
    private var nameArray = Array<String>()
    
    init(nameArray: Array<String> = Array<String>()) {
        self.nameArray = nameArray
    }
    
    func addToStudent() {
        print("추가할 학생의 이름을 입력해주세요")
        let inputName = readLine()!
        
        if inputName != " " && inputName != "\n" {
            for index in 0..<nameArray.count {
                if nameArray[index] == inputName {
                    print("\(inputName)은 이미 존재하는 학생입니다. 추가하지 않습니다.")
                    return
                }
            }
            nameArray.append(inputName)
            print("\(inputName) 학생을 추가하였습니다.")
        } else {
            print("입력이 잘못되었습니다. 다시 확인해주세요.")
        }
    }
    
    func deleteToStudent() {
        // Expecting
    }
    
    func addOrChangeToGrade() {
        // Expecting
    }
    
    func deleteGrade() {
        // Expecting
    }
    
    func viewOfAverage() {
        // Expecting
    }
    
    func exitMenu() {
        // Expecting
    }
}
