//
//  ResultsViewController.swift
//  PersonalQuiz
//
//  Created by Alexey Efimov on 26.10.2020.
//

import UIKit

class ResultsViewController: UIViewController {
    
    
    @IBOutlet var animalTypeLabel: UILabel!
    @IBOutlet var animalDescriptionLabel: UILabel!
    
    //var animaltype: String!
   // var animalDescription: String!
    
    var massivOfAnswers: [Answer]!
    var massivTransferred: [Answer]!
    
    // 1. Передать сюда массив с ответами
    // 2. Определить наиболее часто встречающийся тип животного
    // 3. Отобразить результаты на экране
    // 4. Избавится от кнопки возврата на предыдущий экран
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        massivOfAnswers = massivTransferred
    
        //animalTypeLabel.text = massivOfAnswers[0].text
       // animalDescriptionLabel.text
    }
 
    /*
    func mostCommonValue(inArray array: [Answer]) -> [Answer]? {
        var result: [Answer]?
        var dictionary = [[Answer]: Int]()
     
        massivOfAnswers.forEach { (element) in
            if let count = dictionary[element] {
                dictionary[element] = count + 1
            } else {
                dictionary[element] = 1
            }
        }
        var max = 0
        
        for (key, value) in dictionary {
            if value > max {
                max = value
                result = key
            }
        }
       return result
    }
    */
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationItem.hidesBackButton = true
    }
}
