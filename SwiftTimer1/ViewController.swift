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
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // ストップボタンを押せなくする
    stopButton.isEnabled = true
    
  }

  @IBAction func start(_ sender: Any) {
    
    startButton.isEnabled = true
  }
  
  
  @IBAction func stop(_ sender: Any) {
    
  }
}

