//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Emil Sharifullin on 15/06/16.
//  Copyright © 2016 Emil Sharifullin. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioRecorderDelegate {

    @IBOutlet weak var recordLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordButton: UIButton!
    
    var audioRecorder:AVAudioRecorder!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordButtonPressed(sender: AnyObject) {
        print("Record button is pressed")
        recordLabel.text = "Recording in progress"
        recordButton.enabled = false
        stopRecordButton.enabled = true
        
        let dirPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory,.UserDomainMask, true)[0] as String
        let recordingName = "recordedVoice.wav"
        let pathArray = [dirPath, recordingName]
        let filePath = NSURL.fileURLWithPathComponents(pathArray)
        print(filePath)
        
        let session = AVAudioSession.sharedInstance()
        try!
            session.setCategory(AVAudioSessionCategoryPlayAndRecord)
        try! audioRecorder = AVAudioRecorder(URL: filePath!, settings: [:])
        audioRecorder.delegate = self
        audioRecorder.meteringEnabled = true
        audioRecorder.prepareToRecord()
        audioRecorder.record()
    }

    @IBAction func stopRecordingButtonPressed(sender: AnyObject) {
        print("Stop Recording button pressed")
        recordButton.enabled = true
        recordLabel.text = "Tap to record"
        stopRecordButton.enabled = false
    }
    
    override func viewWillAppear(animated: Bool) {
        print("View will appear")
        stopRecordButton.enabled = false
    }
}

