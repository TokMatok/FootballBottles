//
//  ReviewsVC.swift
//  FootballBottles
//
//  Created by Golyakovph on 14.12.2022.
//

import UIKit

class ReviewsVC: UIViewController {

    
    //labels
    @IBOutlet weak var footbalLabel : UILabel!
    @IBOutlet weak var TenisLabel : UILabel!
    @IBOutlet weak var HockeyLabel : UILabel!
    @IBOutlet weak var BasketballLabel : UILabel!
    @IBOutlet weak var VolleyballLabel : UILabel!
    @IBOutlet weak var NoviceLabel : UILabel!
    @IBOutlet weak var SmesharikLabel : UILabel!
    @IBOutlet weak var YesLabel : UILabel!
    @IBOutlet weak var NoLabel : UILabel!
    @IBOutlet weak var MaybeLabel : UILabel!
    @IBOutlet weak var questionOneLabel : UILabel!
    @IBOutlet weak var questionTwoLabel : UILabel!
    @IBOutlet weak var questionThreeLabel : UILabel!
    
    
    //buttonsOutlets
    @IBOutlet weak var footballButton : UIButton!
    @IBOutlet weak var tenisButton : UIButton!
    @IBOutlet weak var hockeyButton : UIButton!
    @IBOutlet weak var volleyballButton : UIButton!
    @IBOutlet weak var basketballButton : UIButton!
    @IBOutlet weak var noviceButton : UIButton!
    @IBOutlet weak var smesharikButton : UIButton!
    @IBOutlet weak var yesButton : UIButton!
    @IBOutlet weak var noButton : UIButton!
    @IBOutlet weak var maybeButton : UIButton!
    
    
    
    //actions
    @IBAction func footballButton(_ sender: UIButton) {
        self.footballButton.setImage(UIImage(named: "ReviewButtonActive"), for: .normal)
    }
    @IBAction func tenisButton(_ sender: UIButton) {
        self.tenisButton.setImage(UIImage(named: "ReviewButtonActive"), for: .normal)
    }
    @IBAction func basketballButton(_ sender: UIButton) {
        self.basketballButton.setImage(UIImage(named: "ReviewButtonActive"), for: .normal)
    }
    @IBAction func hockeyButton(_ sender: UIButton) {
        self.hockeyButton.setImage(UIImage(named: "ReviewButtonActive"), for: .normal)
    }
    @IBAction func volleyballButton(_ sender: UIButton) {
        self.volleyballButton.setImage(UIImage(named: "ReviewButtonActive"), for: .normal)
    }
    @IBAction func noviceButton(_ sender: UIButton) {
        self.noviceButton.setImage(UIImage(named: "ReviewButtonActive"), for: .normal)
    }
    @IBAction func smesharikButton(_ sender: UIButton) {
        self.smesharikButton.setImage(UIImage(named: "ReviewButtonActive"), for: .normal)
    }
    @IBAction func yesButton(_ sender: UIButton) {
        self.yesButton.setImage(UIImage(named: "ReviewButtonActive"), for: .normal)
    }
    @IBAction func noButton(_ sender: UIButton) {
        self.noButton.setImage(UIImage(named: "ReviewButtonActive"), for: .normal)
    }
    @IBAction func maybeButton(_ sender: UIButton) {
        self.maybeButton.setImage(UIImage(named: "ReviewButtonActive"), for: .normal)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bg")
        self.view.insertSubview(backgroundImage, at: 0)


        // Do any additional setup after loading the view.
    }
    @IBAction func menuDismiss(_ sender: Any) {
        dismiss(animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}



