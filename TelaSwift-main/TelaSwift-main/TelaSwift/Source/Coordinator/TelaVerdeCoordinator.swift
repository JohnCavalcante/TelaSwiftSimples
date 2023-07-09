//
//  TelaVerdeCoordinator.swift
//  TelaSwift
//
//  Created by IFBIOTIC08 on 03/07/23.
//

import Foundation
import UIKit
class TelaVerdeCoordinator: Coordinator {
    
     var navigationController: UINavigationController
      init (navigationController: UINavigationController ) {
             self.navigationController = navigationController
       
        }

    func start() {
         let viewController = TelaVerdeViewController()
            self.navigationController.pushViewController(viewController, animated: true)
        
        viewController.onTelaVermelhaTap = {
            self.gotoTelaVermelhaTap()
        }
        
        viewController.onTelaAzulTap = {
            self.goTelaAzulTap()
        }

  }

  func  gotoTelaVermelhaTap() {
       let coordinator = TelaVermelhaCoordinator(navigationController: navigationController)
            coordinator.start()
  }
  func  goTelaAzulTap() {
            let coordinator = TelaAzulCoordinator(navigationController: navigationController)
            coordinator.start()
        }
}
