//
//  viagemTableViewCell.swift
//  AluraViagens
//
//  Created by Rene Girresse on 15/03/24.
//

import UIKit

class viagemTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var backGroundViewCell: UIView!
    
    
    @IBOutlet weak var viagemImage: UIImageView!
    
    
    @IBOutlet weak var tituloViagemLabel: UILabel!
    
    
    @IBOutlet weak var subtituloViagemLabel: UILabel!
    
    
    @IBOutlet weak var diariaViagemLabel: UILabel!
    
    
    @IBOutlet weak var precoSemDescontoLabel: UILabel!
    
    
    
    @IBOutlet weak var precoViagemLabel: UILabel!
    
    
    
    @IBOutlet weak var statusCancelamentoViagemLabel: UILabel!
    
    
    
    func configuraCelula(_ viagem: Viagem?) {
        
        viagemImage.image = UIImage(named: viagem?.asset ?? "")
        tituloViagemLabel.text = viagem?.titulo
        subtituloViagemLabel.text = viagem?.subtitulo
        precoViagemLabel.text = "R$ \(viagem?.preco ?? 0)"
        
        let atributoString: NSMutableAttributedString = NSMutableAttributedString(string: "RS \(viagem?.precoSemDesconto ?? 0)")
        
        
        atributoString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 1, range:NSMakeRange(0, atributoString.length))
        precoSemDescontoLabel.attributedText = atributoString
        
        if let numeroDeDias = viagem?.diaria, let numeroDeHospedes = viagem?.hospedes {
            let diarias = numeroDeDias == 1 ? "Diária" : "Diárias"
            let hospedes = numeroDeHospedes == 1 ? "Pessoa" : "Pessoas"
            
            diariaViagemLabel.text = "\(numeroDeDias) \(diarias) - \(numeroDeHospedes) \(hospedes)"
        }
        DispatchQueue.main.async {
            self.backGroundViewCell.addSombra()
        }
    }
    
}
    
    

    

