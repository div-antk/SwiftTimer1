//
//  ViewController.swift
//  SwiftTimer1
//
//  Created by Takuya Ando on 2020/11/27.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var ImageView: UIImageView!
  @IBOutlet weak var startButton: UIButton!
  @IBOutlet weak var stopButton: UIButton!
  
  var timer = Timer()
  var count = Int()
  // 画像の配列を宣言
  var imageArray = [UIImage]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    count = 0
    // ストップボタンを押せなくする
    stopButton.isEnabled = true
    
    for i in 0..<5 {
      let image = UIImage(named: "\(i)")
      imageArray.append(image!)
    }
    
    ImageView.image = UIImage(named: "0")
  }
  
  @IBAction func start(_ sender: Any) {

    startTimer()

    // startButtonを押せるようにする
    startButton.isEnabled = false
    stopButton.isEnabled = true
  }
  
  func startTimer() {
    // タイマーを回す。0.2秒毎にメソッドを呼ぶ
    timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(timerUpdate), userInfo: nil, repeats: true)
  }

  // 0.2秒毎に呼ばれる
  @objc func timerUpdate() {

    ImageView.image = imageArray[count]
    
    count = count + 1

    if count > 4 {
      count = 0
    }
  }
  
  @IBAction func stop(_ sender: Any) {
    
    // startButtonを押せないようにする
    startButton.isEnabled = true
    stopButton.isEnabled = false
    
    timer.invalidate()
  }
}

