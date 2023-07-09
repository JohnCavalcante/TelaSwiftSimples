//
//  TelaAzulCoordinator.swift
//  TelaSwift
//
//  Created by IFBIOTIC08 on 03/07/23.
//

import Foundation
import UIKit
class TelaAzulCoordinator: Coordinator {
    
  
   var navigationController: UINavigationController
    
    init (navigationController: UINavigationController ) {
           self.navigationController = navigationController
     
      }

  func start() {
       let viewController = TelaAzulViewController()
          self.navigationController.pushViewController(viewController, animated: true)
      
      viewController.onTelaVerdeTap = {
          self.goTelaVerdeTap()
      }

}

func  goTelaVerdeTap() {

    let coordinator = TelaVerdeCoordinator(navigationController: navigationController)
        coordinator.start()
}
}
