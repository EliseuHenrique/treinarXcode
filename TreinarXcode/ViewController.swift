//
//  ViewController.swift
//  TreinarXcode
//
//  Created by ICMMAC04-3F86 on 30/09/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfInput: UITextField!
    
    @IBOutlet weak var lbContador: UILabel!
    @IBOutlet weak var btMais: UIButton!
    @IBOutlet weak var btMenos: UIButton!
    @IBOutlet weak var btVoltar: UIButton!
    @IBOutlet weak var btIniciar: UIButton!
    
    var number = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbContador.isHidden = true
        btMais.isHidden = true
        btMenos.isHidden = true
        btVoltar.isHidden = true
    }

    @IBAction func iniciar(_ sender: Any) {
        lbContador.isHidden = false
        btMais.isHidden = false
        btMenos.isHidden = false
        btVoltar.isHidden = false
        
        btIniciar.isHidden = true
        tfInput.isHidden = true
        
        number = Int(tfInput.text!) ?? 0
        lbContador.text = "\(number)"
        tfInput.text = ""
        
        view.endEditing(true)
    }
    
    @IBAction func btVoltar(_ sender: Any) {
        lbContador.isHidden = true
        btMais.isHidden = true
        btMenos.isHidden = true
        btVoltar.isHidden = true
        
        btIniciar.isHidden = false
        tfInput.isHidden = false
    }
    
    @IBAction func btMais(_ sender: Any) {
        number = number + 1
        lbContador.text = "\(number)"
    }
    
    @IBAction func btMenos(_ sender: Any) {
    number = number - 1
        lbContador.text = "\(number)"
    }
}

