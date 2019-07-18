//
//  ViewController.swift
//  7DMusic
//
//  Created by Denis Kravchenko on 27.09.2018.
//  Copyright © 2018 Denis Kravchenko. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()
    var songPlayer = AVAudioPlayer()
    var NumberMusick = AVAudioPlayer()
    var colorvibr = UILabel()
//    var massiv : array = [i]
//    добавление переменной
    override func viewDidLoad() {
        super.viewDidLoad()
        
         colorvibr = colorvibrOne
       
        
        
        do{
            audioPlayer = try AVAudioPlayer (contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "тима-белорусских-мокрые-кроссы" , ofType: "mp3" )!))

            audioPlayer.prepareToPlay()

        }catch {
            print("error")
        }
         NumberMusick = audioPlayer
        do{
            songPlayer = try AVAudioPlayer (contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "тима-белорусских-о-простом" , ofType: "mp3" )!))

            songPlayer.prepareToPlay()
            
        }catch {
            print("error")
        }
        if NumberMusick.isPlaying {colorvibr.backgroundColor = UIColor.white
        }else{
            colorvibr.backgroundColor = UIColor.darkGray
        }
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
  

    @IBAction func songfirst(_ sender: Any) {
        audioPlayer.play()
        songPlayer.stop()
        songPlayer.currentTime = 0
        NumberMusick = audioPlayer

    }
    @IBAction func songtwo(_ sender: Any) {
        songPlayer.play()
        audioPlayer.stop()
        audioPlayer.currentTime = 0
        NumberMusick = songPlayer
        
    }
    
    @IBAction func start(_ sender: Any) {
        
            NumberMusick.play()
        
    }
    
    @IBAction func SliderPower(_ sender: UISlider) {
         NumberMusick.volume = sender.value
    }
    @IBAction func stop(_ sender: Any) {
       
            if NumberMusick.isPlaying{
                NumberMusick.stop()
                
        }
    }
    @IBOutlet weak var colorvibrOne: UILabel!
    
    @IBAction func restart(_ sender: Any) {
        
            NumberMusick.currentTime = 0
            NumberMusick.play()
        }
    @IBOutlet weak var colorvibrTwo: UILabel!
    
    @IBAction func zvuk(_ sender: Any) {
        
    }
}
