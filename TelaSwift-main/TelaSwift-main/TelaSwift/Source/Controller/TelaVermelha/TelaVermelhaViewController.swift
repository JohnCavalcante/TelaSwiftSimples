//
//  TelaVermelhaViewController.swift
//  TelaSwift
//
//  Created by IFBIOTIC08 on 03/07/23.
//

import Foundation
import UIKit

class TelaVermelhaViewController: UIViewController {
    
    var onTelaVerdeTap: (() -> Void)?
    var onTelaAzulTap: (() -> Void)?

    
    
    
    lazy var telaVermelhaView: TelaVermelhaView = {
        let telaVermelhaView = TelaVermelhaView()

        telaVermelhaView.onTelaVerdeTap = {
            self.onTelaVerdeTap?()
        }

        telaVermelhaView.onTelaAzulTap ={
            self.onTelaAzulTap
        }


        return telaVermelhaView
    }()
    
       override func loadView(){
           self.view = telaVermelhaView
       }
       
       override func viewDidLoad() {
           super.viewDidLoad()
        self.title = "Tela Vermelha"
           
           self.navigationController?.navigationBar.prefersLargeTitles=true

       }

}
