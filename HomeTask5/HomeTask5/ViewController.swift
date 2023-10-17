//
//  ViewController.swift
//  HomeTask5
//
//  Created by Darya on 17.10.23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //1
        var array = [ "abc", "dwefgefg13", "oiut", "qwertfds", "3fdvsfvv", "qwef gsdjkfnb", "gegbg sdg qwe" ]

        var count = 0
        for i in array {
            let res = i.filter{!$0.isWhitespace}
            count += res.count
        }
        print(count)


        let result = array.flatMap({ $0 }).filter{!$0.isWhitespace}.count
        print (result)


        //2
        let shortNames = array.filter { $0.count >= 5 }.map({ $0 })
        print(shortNames)

        //3
        let shortNames1  = array.filter { $0.count >= 10 }.count
        print(shortNames1)



        //4
        
        let addsd = array.max { first, second in
            first.count < second.count
        }
        print(addsd)
        
        
        var count1 = ""
        for i in array {
            if i.filter({!$0.isWhitespace}).count > count1.filter({!$0.isWhitespace}).count {
                count1=i
            }
        }
        print(count1)



        //5

        let sortedArray = array.sorted { firstString, secondString in
            firstString.count < secondString.count
        }
        print (sortedArray)


        //6
        let arrayWhithoutSpaces = array.map{elem in elem.filter({!$0.isWhitespace}) }
        print(arrayWhithoutSpaces)
        // Do any additional setup after loading the view.
    }


}

