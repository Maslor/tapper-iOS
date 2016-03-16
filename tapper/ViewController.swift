//
//  ViewController.swift
//  tapper
//
//  Created by Gabriel Freire on 16/03/16.
//  Copyright © 2016 maslor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var maxTaps = 0
    var currentTaps = 0
    
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var howManyTapsText: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var tapsLabel: UILabel!
    
    @IBAction func onCoinTapped(sender: UIButton) {
        currentTaps++
        updateTapsLabel()
        if isGameOver() {
            restartGame()
        }
    }
    
    func restartGame() {
        maxTaps = 0
        howManyTapsText.text = ""
        logoImageView.hidden = false
        howManyTapsText.hidden = false
        playButton.hidden = false
        
        tapButton.hidden = true
        tapsLabel.hidden = true
    }
    
    func isGameOver() -> Bool{
        if(currentTaps == maxTaps){
            return true
        }
        return false
    }
    func updateTapsLabel() {
        tapsLabel.text = "\(currentTaps) Taps"
    }
    
    @IBAction func onPlayBtnPressed(sender: UIButton!) {
        
        if howManyTapsText.text != nil && howManyTapsText.text != "" {
            
            logoImageView.hidden = true
            howManyTapsText.hidden = true
            playButton.hidden = true
            
            tapButton.hidden = false
            tapsLabel.hidden = false
            
            maxTaps = Int(howManyTapsText.text!)!
            currentTaps = 0
            
            updateTapsLabel()
        }
    }
}

