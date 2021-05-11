//
//  ViewController.swift
//  fortune-teller
//
//  Created by 簡吟真 on 2021/5/5.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var answerLabel: UILabel! //答案
    @IBOutlet weak var messageField: UITextField! //輸入問題
    @IBOutlet weak var sourceLabel: UITextView! //圖片來源
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //點空白處收鍵盤
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    self.view.endEditing(true)
    }
    
    //點return收鍵盤 (拉 @IBA 時 Event 選擇 Did End On Exit)
    @IBAction func dismissKeyboard(_ sender: Any) {
    }
    

    
    // 設定題目與答案
    @IBAction func sendButton(_ sender: UIButton) {

        let nameSign:String = messageField.text!
        
        if nameSign == "天氣如何"{
            
            answerLabel.text = "晴天？雨天？請查天氣預報😆"
            
        } else if nameSign == "運勢如何"{
            
            answerLabel.text = "好或不好，在於心態😊"
            
        } else if nameSign == "財運如何"{
                
            answerLabel.text = "上班就會有薪水的💰"
            
        } else {
            
            answerLabel.text = "指點迷津" //沒輸入問題時，恢復原本的文字
            
            }
        
    }
     
    //圖片來源 顯示開關
    @IBAction func SwitchOn(_ sender: UISwitch) {
        if sender.isOn{
            sourceLabel.isHidden = false

                }else{
                    sourceLabel.isHidden = true
                  
                    
                }
            }
    }
    


