//
//  ReviewsVC.swift
//  FootballBottles
//
//  Created by Golyakovph on 14.12.2022.
//

import UIKit

class ReviewsVC: UIViewController {
    
    
    //labels
    
    @IBOutlet weak var reviewsTitle: UILabel!
    @IBOutlet weak var footbalLabel : UILabel!
    @IBOutlet weak var TenisLabel : UILabel!
    @IBOutlet weak var HockeyLabel : UILabel!
    @IBOutlet weak var BasketballLabel : UILabel!
    @IBOutlet weak var VolleyballLabel : UILabel!
    @IBOutlet weak var NoviceLabel : UILabel!
    @IBOutlet weak var SkillUserLabel : UILabel!
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
        
        //Localization
        reviewsTitle.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Reviews" : "Отзыв"
        questionOneLabel.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Question 1 - What kind of sports do you prefer (or would you prefer to bet on)?" : "Вопрос 1 - На какой вид спорта вы предпочитаете (или предпочли бы совершать ставки) ?"
        questionTwoLabel.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Question 2 - Are you new to the world of betting?" : "Вопрос 2 - Являетесь ли вы Новичком в мире ставок?"
        questionThreeLabel.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "3 question - Was the information in the application useful for you?" : "Вопрос 3 - Была ли представленная в приложении информация, полезна для вас?"
        footbalLabel.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Football" : "Футбол"
        TenisLabel.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Tennis" : "Тенис"
        HockeyLabel.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Hockey" : "Хоккей"
        BasketballLabel.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Basketball" : "Баскетбол"
        VolleyballLabel.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Volleyball" : "Воллейбол"
        
        NoviceLabel.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Novice" : "Новичок"
        SkillUserLabel.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Expirience User" : "Опытный пользователь"
        YesLabel.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Yes" : "Да"
        NoLabel.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "No" : "Нет"
        MaybeLabel.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Partiality" : "Частично"
        
        
    }
    
    @IBAction func menuDismiss(_ sender: Any) {
        showVC(id: "menu")
    }
}



