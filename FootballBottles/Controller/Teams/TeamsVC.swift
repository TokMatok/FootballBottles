//
//  TeamsVC.swift
//  FootballBottles
//
//  Created by Golyakovph on 14.12.2022.
//

import UIKit

class TeamsVC: UIViewController {
    
    //
    @IBOutlet weak var teamsTitle: UILabel!
    @IBOutlet weak var teamsCollectionView: UICollectionView!
    
    private var teams: [TeamTeam] = []
    
    var baseUrl: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        teamsCollectionView.dataSource = self
        teamsCollectionView.delegate = self
        
        //set background
        setBackgroundImage(set: "bg")
        
        //localization
        teamsTitle.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Teams" : "Команды"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        getTeams()
    }
    
    @IBAction func menuDismiss(_ sender: Any) {
        showVC(id: "menu")
    }
    
    func getTeams() {
        let url = URL(string: baseUrl)
        var request = URLRequest(url: url!)
        request.httpMethod = "GET"
        print(request)
        print(baseUrl)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            
            guard let data, error == nil else { return }
            
            do {
                let jsonDecoder = JSONDecoder()
                let responseModel = try jsonDecoder.decode(TeamsModel.self, from: data)
                self.teams = responseModel.teams
                
                DispatchQueue.main.async {
                    self.teamsCollectionView.reloadData()
                }
            }catch {
                print("ERROR")
            }
            
        }.resume()
    }
}



extension TeamsVC: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return teams.count
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "players") as! PlayersVC
        vc.teamID = teams[indexPath.row].id
        print(teams[indexPath.row].id)
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        present(vc, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "teamsCell", for: indexPath) as! TeamsCell
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor.clear
        cell.selectedBackgroundView = backgroundView
        cell.teamsTextLbl.text = teams[indexPath.row].shortName
        return cell
    }
    
}

