//
//  ExecuteMenu.swift
//  MyCreditManager
//
//  Created by Jason on 2022/11/26.
//

import Foundation

class ExecuteMenu: SystemMenu {
    private var nameArray = Array<String>()
    private var gradeArray = Array<String>()
    
    init(nameArray: Array<String> = Array<String>(),
         gradeArray: Array<String> = Array<String>()) {
        self.nameArray = nameArray
        self.gradeArray = gradeArray
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
        print("삭제할 학생의 이름을 입력해주세요")
        let inputName = readLine()!
        
        if (inputName != " " && inputName != "\n") || nameArray.isEmpty == false {
            repeat {
                let deleteStudent = nameArray.filter{ $0 == inputName}
                guard let takeOffArray = deleteStudent.first else {
                    print("\(inputName) 학생을 찾지못했습니다.")
                    return
                }
                print("\(takeOffArray) 학생을 삭제하였습니다.")
            } while nameArray.count == 0
        }
    }
    
    func addOrChangeToGrade() {
        let checkGradeBoard = ["A+", "A", "B+", "B", "C+", "C", "D+", "D", "F"]
        
        print("성적을 추가할 학생의 이름, 과목 이름, 성적(A+, A, F 등)을 띄어쓰기로 구분하여 차례로 작성해주세요.")
        print("입력예) Mickey Swift A+")
        print("만약에 학생의 성적 중 해당 과목이 존재하면 기존 점수가 갱신됩니다.")
        
        let inputGrade = readLine()!.components(separatedBy: " ")
        let checkInputCount = inputGrade.count >= 1 || inputGrade.count < 3 ? true : false
        
        if checkInputCount == true {
            inputGrade.forEach{
                switch $0 {
                case inputGrade[0] :
                    break
                case inputGrade[1] :
                    break
                case inputGrade[2] :
                    break
                default :
                    break
                }
            }
        } else {
            print("입력(갯수)이(가) 잘못되었습니다. 다시 확인해주세요.")
        }
        
        if inputGrade.first == nil || inputGrade.count < 3 {
            let popGrade = checkGradeBoard.filter{ $0 != inputGrade[2] }
            //            let isRightGrade:Bool = checkGradeBoard.filter{ $0 != inputGrade[2] } ? true : false
        }
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
