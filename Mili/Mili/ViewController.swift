//
//  ViewController.swift
//  Mili
//
//  Created by Milena Gordien--Piquet on 24/03/2025.
//

import UIKit
//Interface
//Clavier
//Jeu implementation
    //Couleur des lettres

    
class ViewController: UIViewController {
    
    let mots : [String] = [
        "AVION",
        "BICYCLETTE",
        "VOITURE",
        "SKATE",
        "TROTINETTE"
    ]
    var motsecret = ""
    
    @IBOutlet var ligne1: [UILabel]!
    @IBOutlet var ligne2: [UILabel]!
    @IBOutlet var ligne3: [UILabel]!
    @IBOutlet var ligne4: [UILabel]!
    @IBOutlet var ligne5: [UILabel]!
    @IBOutlet var ligne6: [UILabel]!
    
    
    @IBAction func clic(_ sender: UIButton) {
        
        guard let ClavierLettre = sender.titleLabel?.text else {
            return}
        print("La lettre \(ClavierLettre) a été cliquée")
        
        if ClavierLettre == "Supprimer" {
            supprimerLettre() //Fonction supprimer la lettre a la derniere position
            
        } else if ClavierLettre == "Entrer" {
            valider() //Valider le mot
        }
    }
    
    func supprimerLettre(){
        
    }
    func valider (){
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nouveauJeu()
        commencer()
        
        func nouveauJeu(){
            let Grille = [ligne1,ligne2,ligne3,ligne4,ligne5,ligne6]
            Grille.forEach{ligne in ligne?.forEach{ label in
                label.text = " "
                label.backgroundColor = .clear
                label.textColor = .white
                label.layer.borderColor = UIColor.systemGray4.cgColor
            }
            }
            
        }
        func commencer () {
            
        }
        
        
        
    }
}

