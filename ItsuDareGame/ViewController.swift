//
//  ViewController.swift
//  ItsuDareGame
//
//  Created by 中村健介 on 2025/05/06.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dokodeLabel: UILabel!
    @IBOutlet var daregaLabel: UILabel!
    @IBOutlet var doshitaLabel: UILabel!
    
    let itsuArray: [String] = ["1年前", "1週間前", "昨日", "今日"]
    
    let dokodeArray: [String] = ["山の上で", "アメリカで", "学校で", "クラスで"]
    
    let daregaArray: [String] = ["僕が", "大統領が", "先生が", "友達が"]
    
    let doshitaArray: [String] = ["叫んだ", "演説した", "怒った", "踊った"]
    
    var index: Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //ラベルのコーナーを丸くする
        itsuLabel.layer.cornerRadius = 10
        dokodeLabel.layer.cornerRadius = 10
        daregaLabel.layer.cornerRadius = 10
        doshitaLabel.layer.cornerRadius = 10
        
        itsuLabel.clipsToBounds = true
        dokodeLabel.clipsToBounds = true
        daregaLabel.clipsToBounds = true
        doshitaLabel.clipsToBounds = true
    }
    
    @IBAction func change() {
        
        itsuLabel.text = itsuArray[index]
        dokodeLabel.text = dokodeArray[index]
        daregaLabel.text = daregaArray[index]
        doshitaLabel.text = doshitaArray[index]
        
        if index == 3 {
            index = 0
        } else {
            index = index + 1
        }
    }
    
    @IBAction func reset() {
        itsuLabel.text = "----"
        dokodeLabel.text = "----"
        daregaLabel.text = "----"
        doshitaLabel.text = "----"
        
        index = 0
    }
    
    @IBAction func random() {
        
        let itsuIndex = Int.random(in: 0...3)
        let dokodeIndex = Int.random(in: 0...3)
        let daregaIndex = Int.random(in: 0...3)
        let doshitaIndex = Int.random(in: 0...3)
        
        print("いつ: \(itsuIndex)")
        print("どこで: \(dokodeIndex)")
        print("だれが: \(daregaIndex)")
        print("どうした: \(doshitaIndex)")
        
        itsuLabel.text = itsuArray[itsuIndex]
        dokodeLabel.text = dokodeArray[dokodeIndex]
        daregaLabel.text = daregaArray[daregaIndex]
        doshitaLabel.text = doshitaArray[doshitaIndex]
    }


}

