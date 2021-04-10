//
//  SplashVC.swift
//  Koraa
//
//  Created by Yasser AlShaFei on 2/15/21.
//

import AVKit
import AVFoundation
import UIKit



class SplashVC: ViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(self, selector: #selector(playerDidFinishPlaying), name: .AVPlayerItemDidPlayToEndTime, object: nil)
    }
    
    
    
    
    func upToSevondVC() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondViewController = storyboard.instantiateViewController(withIdentifier: "SignUpView") as! SignUpVC
        present(secondViewController, animated: true, completion: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "splash", ofType: "mp4")!))
        let layer = AVPlayerLayer(player: player)
        layer.frame = view.bounds
        layer.videoGravity = .resizeAspectFill
        view.layer.addSublayer(layer)
        player.volume = 0
        player.play()
        //let vc = AVPlayerViewController()
        //vc.player = player
        //present(vc, animated: true)
    }
    
    @objc func playerDidFinishPlaying(note: NSNotification) {
        upToSevondVC()
        print("Video Finished")
    }
}
