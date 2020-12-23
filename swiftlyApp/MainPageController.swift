//
//  MainPageController.swift
//  swiftlyApp
//
//  Created by Dev on 12/22/20.
//

import UIKit

class MainPageController: UIViewController {
    
    var timer = Timer()
    var totalSecond = 3

    override func viewDidLoad() {
        startTimer();
    }

    func startTimer() {
       timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
    }

    @objc func updateTime() {
        print(timeFormatted(totalSecond))

        if totalSecond != 0 {
           totalSecond -= 1
        } else {
           endTimer()
        }
    }

    func endTimer() {
        timer.invalidate()
        switchScreen();
    }

    func timeFormatted(_ totalSeconds: Int) -> String {
        let seconds: Int = totalSeconds % 60
        return String(format: "0:%02d", seconds)
    }
    
    func switchScreen() {
        self.performSegue(withIdentifier: "firstDirect", sender: self)
    }
}
