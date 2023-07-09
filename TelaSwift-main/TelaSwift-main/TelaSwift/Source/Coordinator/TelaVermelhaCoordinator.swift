//
//  TelaVermelhaCoordinator.swift
//  TelaSwift
//
//  Created by IFBIOTIC08 on 03/07/23.

import Foundation
import UIKit
class TelaVermelhaCoordinator: Coordinator {
    
     var navigationController: UINavigationController
      
      init (navigationController: UINavigationController ) {
             self.navigationController = navigationController
       
        }

    func start() {
         let viewController = TelaVermelhaViewController()
            self.navigationController.pushViewController(viewController, animated: true)
        
        viewController.onTelaVerdeTap = {
            self.goTelaVerdeTap()
        }
        
        viewController.onTelaAzulTap = {
            self.goTelaAzulTap()
        }

  }

  func  goTelaVerdeTap() {      
            let coordinator = TelaVerdeCoordinator(navigationController: navigationController)
            coordinator.start()  
            }
        func  goTelaAzulTap() {
            let coordinator = TelaAzulCoordinator(navigationController: navigationController)
            coordinator.start()
        }



}
