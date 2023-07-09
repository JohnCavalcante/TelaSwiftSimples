//
//  TelaAzulViewController.swift
//  TelaSwift
//
//  Created by IFBIOTIC08 on 03/07/23.
//

import Foundation
import UIKit

class TelaAzulViewController: UIViewController {
    
    var onTelaVerdeTap: (() -> Void)?
    
    
    
    lazy var TelaVerde: TelaAzulView = {
        let TelaVerde = TelaAzulView()
        TelaVerde.onTelaVerdeTap = {
            self.onTelaVerdeTap?()
        }
        return TelaVerde
    }()
    
       override func loadView(){
           self.view = TelaVerde
       }
       
    // é executado quando está carregando
       override func viewDidLoad() {
           super.viewDidLoad()
        self.title = "Tela Azul"
           
           self.navigationController?.navigationBar.prefersLargeTitles=true

       }

}
