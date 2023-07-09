//
//  TelaVerdeViewController.swift
//  TelaSwift
//
//  Created by IFBIOTIC08 on 03/07/23.
//

import Foundation
import UIKit

class TelaVerdeViewController: UIViewController {
    
    var onTelaVermelhaTap: (() -> Void)?
    var onTelaAzulTap: (() -> Void)?
    
    
    
    lazy var telaVerdeView: telaVerdeView = {
        let telaVerdeView = TelaVerdeView()

        telaVerdeView.onTelaVermelhaTap = {
            self.onTelaVermelhaTap?()
        }

        telaVerdeView.onTelaAzulTap = {
            self.onTelaAzulTap
        }


        return telaVerdeView


    }()
    
       override func loadView(){
           self.view = telaVerdeView
       }
       
       override func viewDidLoad() {
           super.viewDidLoad()
        self.title = "Tela Verde"
           
           self.navigationController?.navigationBar.prefersLargeTitles=true

       }

}
