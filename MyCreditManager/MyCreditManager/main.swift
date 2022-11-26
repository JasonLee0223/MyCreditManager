//
//  main.swift
//  MyCreditManager
//
//  Created by Jason on 2022/11/24.
//

import Foundation

class MyCreditManager {
    
    func menuStart() {
        let executeMenu = ExecuteMenu()
        var exitMenu: String = ""
        
        repeat {
            
            print("원하는 기능을 입력해주세요")
            print("1: 학생추가, 2: 학생삭제, 3: 성적추가(변경), 4: 성적삭제, 5: 평점보기, X: 종료")
            
            let inputValue = readLine()!
            exitMenu = inputValue
            
            switch inputValue {
            case "1":
                executeMenu.addToStudent()
                break
            case "2":
                executeMenu.deleteToStudent()
                break
            case "3":
                break
                
            case "4":
                break
                
            case "5":
                break
                
            case "X":
                break
                
            default:
                print("뭔가 입력이 잘못되었습니다. 1~5 사이의 숫자 혹은 X를 입력해주세요.")
            }
            
        } while exitMenu != "X"
    }
}

let startOfProgram = MyCreditManager()
startOfProgram.menuStart()
