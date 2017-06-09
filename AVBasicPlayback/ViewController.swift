//
//  ViewController.swift
//  AVBasicPlayback
//
//  Created by chengxc on 2017/6/9.
//  Copyright © 2017年 chengxue. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBAction func playVideo(_ sender: Any) {
		
		guard let url = URL(string: "https://devimages.apple.com.edgekey.net/samplecode/avfoundationMedia/AVFoundationQueuePlayer_HLS2/master.m3u8") else {
			return
		}
		
		let player = AVPlayer(url: url)
		
		let controller = AVPlayerViewController()
		controller.player = player
		
		present(controller, animated: true) {
			player.play()
		}
	
	
	}
	
}

