

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var resultadolegenda: UILabel!
    
    @IBOutlet weak var precoAlcoolLegenda: UITextField!
    
    @IBOutlet weak var precoGasolinaLegenda: UITextField!
    
    @IBAction func calcularCombustivel(_ sender: Any) {
        
        if  let precoAlcool = precoAlcoolLegenda.text {
            if let precoGasolina = precoGasolinaLegenda.text {
                
                let resultado =  self.validarCampos(precoAlcool: precoAlcool, precoGasolina: precoGasolina)
                if resultado{
                    self.calcularMelhorValor(precoAlcool: precoAlcool, precoGasolina: precoGasolina)
                    
                }else{
                    resultadolegenda.text = "Digite os precos para calcular!!!"
                }
                
                
            }
        }
    }
    
    func calcularMelhorValor(precoAlcool: String, precoGasolina: String){
        
        if let valorAlcool = Double(precoAlcool){
            if let valorGasolina = Double(precoGasolina){
                let resultadoPreco = valorAlcool / valorGasolina
                if resultadoPreco >= 0.7{
                    self.resultadolegenda.text = "Melhor utilizar gasolina 😐"
                }else{
                    
                    self.resultadolegenda.text = "Melhor utilizar alcool 😐"                }
                
            }
        }
    }
    
    func validarCampos(precoAlcool: String, precoGasolina: String) -> Bool{
        
        var camposValidados = true
        
        
        if precoAlcool.isEmpty{
            camposValidados = false
            
        }else if precoGasolina.isEmpty{
            camposValidados = false
        }
        
        
        return camposValidados
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

