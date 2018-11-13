//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Aron van Groningen on 13/11/2018.
//  Copyright © 2018 Aron van Groningen. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
  
  var player: Player!

  // Mark - Outlet

  @IBOutlet weak var nextBtn: BorderButton!
  @IBOutlet weak var mensBtn: BorderButton!
  @IBOutlet weak var womensBtn: BorderButton!
  @IBOutlet weak var coedBtn: BorderButton!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
        nextBtn.isHidden = true
    }
  

  // Mark - functions

  func selectLeague(leagueType:String){
    player.desiredLeague = leagueType
    nextBtn.isEnabled = true
    nextBtn.isHidden = false

  }
  
  // Mark - IBActions

  @IBAction func onMansTapped(_ sender: Any) {
      selectLeague(leagueType: "mens")
    
  }
  @IBAction func onWomensTapped(_ sender: Any) {
    selectLeague(leagueType: "womens")


  }
  @IBAction func onCoedTapped(_ sender: Any) {
    selectLeague(leagueType: "coed")

  }
  
  @IBAction func onNextTapped(_ sender: Any) {
    performSegue(withIdentifier: "skillVCSegue", sender: self)
  }
  
  // Mark - Navigation
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let skillVC = segue.destination as? SkillVC {
      skillVC.player = player
    }
  }
}
