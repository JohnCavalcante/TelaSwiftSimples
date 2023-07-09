//
//  TelaVerdeView.swift
//  TelaSwift
//
//  Created by IFBIOTIC08 on 03/07/23.
//

import Foundation
import UIKit

class TelaVerdeView:UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .viewBackGroundColor2
        setupVisualElements()
        
    }
    var onTelaAzulTap: (() -> Void)?
    var onTelaVermelhaTap: (() -> Void)?


                        
    var buttonTelaAzul = ButtonDefault(botao: "Ir para a tela azul ")
    
    //cria a função com as propriadades do botão registrar
    var buttonTelaVermelha = ButtonDefault(botao: "Ir para a tela vermelha ")
        
    
    func setupVisualElements() {

        self.addSubview(buttonTelaAzul)
        self.addSubview(buttonTelaVermelha)
        
        buttonTelaAzul.addTarget(self, action: #selector(TelaAzulTap), for: .touchUpInside)
        buttonTelaVermelha.addTarget(self, action: #selector(TelaVermelhaTap), for: .touchUpInside)

        
        NSLayoutConstraint.activate([

            
            buttonTelaAzul.widthAnchor.constraint(equalToConstant: 374),
            buttonTelaAzul.heightAnchor.constraint(equalToConstant: 60),
            buttonTelaAzul.topAnchor.constraint(equalTo: self.topAnchor, constant: 420),
            buttonTelaAzul.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonTelaAzul.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonTelaVermelha.widthAnchor.constraint(equalToConstant: 374),
            buttonTelaVermelha.heightAnchor.constraint(equalToConstant: 60),
            buttonTelaVermelha.topAnchor.constraint(equalTo: buttonTelaAzul.bottomAnchor, constant: 25),
            buttonTelaVermelha.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonTelaVermelha.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),

        
        ])
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    @objc
    private func TelaAzulTap(){
        onTelaAzulTap?()
    }
    @objc
    private func TelaVermelhaTap(){
        onTelaVermelhaTap?()
    }
    
}
