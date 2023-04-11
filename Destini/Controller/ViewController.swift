import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textOfStory: UILabel!
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    var storyBrain = StoryBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(sender.currentTitle!)
        updateUI()
    }
    
    
    func updateUI() -> Void {
        textOfStory.text = storyBrain.getStory()
        firstButton.setTitle(storyBrain.getChoice(1), for: .normal)
        secondButton.setTitle(storyBrain.getChoice(2), for: .normal)
    }

}

