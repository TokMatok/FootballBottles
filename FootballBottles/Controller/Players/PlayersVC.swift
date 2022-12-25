//
//  PlayersVC.swift
//  FootballBottles
//
//  Created by Golyakovph on 14.12.2022.
//

import UIKit

class PlayersVC: UIViewController {
    
    var teamID = 1
    private var allPlayers: [PlayerElement] = []
    
    @IBOutlet weak var playersTitle: UILabel!
    @IBOutlet weak var playersSegmentedControl: UISegmentedControl!
    @IBOutlet weak var playersTableView: UITableView!
    
    @IBOutlet weak var nameTitle: UILabel!
    @IBOutlet weak var positionTitle: UILabel!
    @IBOutlet weak var weightTitle: UILabel!
    @IBOutlet weak var growthTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bg")
        self.view.insertSubview(backgroundImage, at: 0)
        
        playersTableView.dataSource = self
        playersTableView.delegate  = self
        playersSegmentedControl.setTitleTextAttributes([.foregroundColor: UIColor.white] , for: .normal)
        
        //Localization
        playersTitle.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Players" : "Игроки"
        nameTitle.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Name" : "Имя"
        weightTitle.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Weight" : "Масса"
        growthTitle.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Growth" : "Рост"
        
        playersSegmentedControl.setTitle(LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Players" : "Игроки", forSegmentAt: 0)
        playersSegmentedControl.setTitle(LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Matches" : "Матчи", forSegmentAt: 1)
        playersSegmentedControl.setTitle(LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Transfer" : "Трансфер", forSegmentAt: 2)
        
    }
    
    @IBAction func menuDismiss(_ sender: Any) {
        showVC(id: "menu")
    }
    
    @IBAction func playersSegmentedControl(_ sender: Any) {
        switch playersSegmentedControl.selectedSegmentIndex {
        case 0: showVC(id: "players")
        case 1: showVC(id: "matches")
        case 2: showVC(id: "transfer")
        default: break
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let url = URL(string: "https://api.sofascore.com/api/v1/team/\(teamID)/players")
        var request = URLRequest(url: url!)
        request.httpMethod = "GET"
        URLSession.shared.dataTask(with: request, completionHandler: { data, response, error -> Void in
            
            guard let data else { return }
            print(data)
            do {
                let jsonDecoder = JSONDecoder()
                let responseModel = try jsonDecoder.decode(AwayPlayers.self, from: data)
                self.allPlayers = responseModel.players
                print(self.allPlayers)
                
                DispatchQueue.main.async {
                    self.playersTableView.reloadData()
                }
                
            } catch {
                print("JSON Serialization error")
            }
        }).resume()
    }
}


extension PlayersVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        allPlayers.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "playersCell", for: indexPath) as! PlayersCell
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor.clear
        cell.selectedBackgroundView = backgroundView
        if indexPath.row == 0 {
            cell.nameLbl.isHidden = true
            cell.numberLbl.isHidden = true
            cell.positionLbl.isHidden = true
            cell.weightLbl.isHidden = true
            cell.growthLbl.isHidden = true
            return cell
        } else {
            cell.nameLbl.isHidden = false
            cell.numberLbl.isHidden = false
            cell.positionLbl.isHidden = false
            cell.weightLbl.isHidden = false
            cell.growthLbl.isHidden = false
            cell.nameLbl.text = allPlayers[indexPath.row - 1].player.shortName
            cell.growthLbl.text = "\(Int.random(in: 170...194))"
            cell.weightLbl.text = "\(Int.random(in: 70...86))"
            cell.positionLbl.text = "\(allPlayers[indexPath.row - 1].player.position)"
            cell.numberLbl.text = "\(indexPath.row)"
            return cell
        }
    }
    
}

