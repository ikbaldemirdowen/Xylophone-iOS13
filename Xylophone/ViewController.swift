import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!


    @IBAction func keyPressed(_ sender: UIButton) {
        let title = sender.currentTitle
        playSound(title!)
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2)
        {
            sender.alpha = 1
        }
    }
    
    func playSound(_ soundName : String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
