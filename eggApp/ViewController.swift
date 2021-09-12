//
//  ViewController.swift
//  eggApp
//
//  Created by 孫本晴貴 on 2021/08/16.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   
        countLabel.text =  String(count)
        
        dispImage()
    }

    @IBOutlet var countLabel: UILabel!
    
    @IBOutlet var textLabel: UILabel!
    
    var count :Int = 50
    
    @IBOutlet var imageView: UIImageView!
    
    var dispImageNum = 0
    
    func dispImage() {
        let imageArray = ["スクリーンショット 2021-08-04 0.06.27","R20125_210816_0","R20125_210816_1"]
        let name = imageArray[dispImageNum]
        
        let image = UIImage(named: name)
        imageView.image = image
        
    }
    
    
    @IBAction func button(_ sender: Any) {
        
        count -= 1
        countLabel.text = String(count)
//        カウント数に応じたテキスト変更！！
        if count == 30 {
            textLabel.text = "我是阿紫"
            dispImageNum += 1
        }else if count == 10 {
            dispImageNum += 1
        }else if count == 0 {
            textLabel.text = "我很漂亮嗎？"
        }
        dispImage()
    }
    
}

