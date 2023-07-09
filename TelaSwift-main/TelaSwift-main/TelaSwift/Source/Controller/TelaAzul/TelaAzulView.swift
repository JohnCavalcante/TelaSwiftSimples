//
//  TelaAzulView.swift
//  TelaSwift
//
//  Created by IFBIOTIC08 on 03/07/23.
//

import Foundation
import UIKit

class TelaAzulView: UIView {
    
    override init(frame: CGRect) {
        //chama o frame da superclasse
        super.init(frame: frame)
        // muda a cor de fundo do app para branco
        self.backgroundColor = .viewBackGroundColor
        setupVisualElements()
        
    }
    
    var onTelaVerdeTap: (() -> Void)?
    

    
    var buttonTelaVerde = ButtonDefault(botao: "Ir para a tela verde ")
    
    func setupVisualElements() {
        self.addSubview(buttonTelaVerde)
        buttonTelaVerde.addTarget(self, action: #selector(TelaVerdeTap), for: .touchUpInside)

        NSLayoutConstraint.activate([

            buttonTelaVerde.widthAnchor.constraint(equalToConstant: 374),
            buttonTelaVerde.heightAnchor.constraint(equalToConstant: 60),
            buttonTelaVerde.topAnchor.constraint(equalTo: self.topAnchor, constant: 420),
            buttonTelaVerde.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonTelaVerde.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
    
        ])
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    @objc
    private func TelaVerdeTap(){
        onTelaVerdeTap?()
    }
}
