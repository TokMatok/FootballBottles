//
//  MatchesVC.swift
//  FootballBottles
//
//  Created by Golyakovph on 14.12.2022.
//

import UIKit

class MatchesVC: UIViewController {
    
    @IBOutlet weak var matchesTitle: UILabel!
    @IBOutlet weak var matchesSegmentedControl: UISegmentedControl!
    @IBOutlet weak var collectionView: UICollectionView!
    
    let baseUrl: String = ""
    private var allGames: [Event] = []
    var matchId: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bg")
        self.view.insertSubview(backgroundImage, at: 0)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        matchesSegmentedControl.setTitleTextAttributes([.foregroundColor: UIColor.white] , for: .normal)
        
        //Loacalization
        matchesTitle.text = LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Matches" : "Матчи"
        matchesSegmentedControl.setTitle(LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Players" : "Игроки", forSegmentAt: 0)
        matchesSegmentedControl.setTitle(LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Matches" : "Матчи", forSegmentAt: 1)
        matchesSegmentedControl.setTitle(LocalizationSystem.sharedInstance.getLanguage() == "en" ? "Transfer" : "Трансфер", forSegmentAt: 2)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        getData()
    }
    
    @IBAction func menuDismiss(_ sender: Any) {
        showVC(id: "menu")
    }
    
    @IBAction func matchesSegmentedControl(_ sender: Any) {
        switch matchesSegmentedControl.selectedSegmentIndex {
        case 0: showVC(id: "players")
        case 1: showVC(id: "matches")
        case 2: showVC(id: "transfer")
        default: break
        }
    }
    
    func getData() {
        let url = URL(string: MatchUrls.ru)
        var request = URLRequest(url: url!)
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request, completionHandler: { data, response, error -> Void in
            
            do {
                let jsonDecoder = JSONDecoder()
                let responseModel = try jsonDecoder.decode(Match.self, from: data!)
                
                if self.baseUrl != MatchUrls.comingSoon {
                    let games = responseModel.tournaments[0].events.prefix(22)
                    self.allGames = Array(games)
                } else {
                    for game in responseModel.tournaments.prefix(22) {
                        self.allGames.append(game.events[0])
                    }
                }
                
                
                DispatchQueue.main.async {
                    self.collectionView.reloadData()
                }
                
            } catch {
                print("JSON Serialization error")
            }
        }).resume()
    }
    
}


extension MatchesVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard self.title == "Favorites" || self.title == "Matches"
                || self.title == "Избранное" || self.title == "Матчи" else { return }
        let vc = storyboard?.instantiateViewController(withIdentifier: "history") as! HistoryVC
        vc.modalTransitionStyle = .crossDissolve
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        allGames.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: "matchesCell",
            for: indexPath) as? MatchesCell
        else { return UICollectionViewCell() }
        cell.configure(match: allGames[indexPath.row])
        return cell
    }
}
