import UIKit

public class LojaCarros {
    var nome: String
    var cnpj: String
    var telefone: String
    var marcaCarro: String
    private var estoque: Int
    
    init (nome: String, cnpj: String, telefone: String, marcaCarro: String, estoque: Int) {
        self.nome = nome
        self.cnpj = cnpj
        self.telefone = telefone
        self.marcaCarro = marcaCarro
        self.estoque = estoque
    }
    
    func venderCarro(qtdCarros: Int, estoqueLoja: Int) {
        let qtdCarros = qtdCarros
        let estoqueLoja = estoqueLoja
        let verificaEstoque = estoqueLoja - qtdCarros
        
        if verificaEstoque < 0 {
            print("ATENÇÃO: Não há carro(s) suficientes no estoque para concluir a venda!")
            print("O estoque da \(self.nome) é de: \(self.getEstoque()) carro(s).")
        } else {
            if qtdCarros < 5 {
                if verificaEstoque == 0{
                    setEstoque(carro: (verificaEstoque + 2))
                    print("Venda concluida de: \(qtdCarros) carro(s).")
                    print("ATENÇÃO: A Fábrica bonificou a loja com 2 carros por ter vendido todo estoque!")
                    print("O estoque da \(self.nome) é de: \(self.getEstoque()) carro(s).")
                } else {
                    print("Venda concluida de: \(qtdCarros) carro(s).")
                    setEstoque(carro: verificaEstoque)
                    print("O estoque da \(self.nome) é de: \(self.getEstoque()) carro(s).")
                }
            } else {
                if verificaEstoque == 0{
                    print("Venda concluida de: \(qtdCarros) carro(s).")
                    setEstoque(carro: (verificaEstoque + 3))
                    print("ATENÇÃO: A Fábrica bonificou a loja com 3 carros: 1 por vender 5 ou mais carros e 2 por ter vendido todo estoque!")
                    print("O estoque da \(self.nome) é de: \(self.getEstoque()) carro(s).")
                } else {
                    print("Venda concluida de: \(qtdCarros) carro(s).")
                    setEstoque(carro: (verificaEstoque + 1))
                    print("O estoque da \(self.nome) é de: \(self.getEstoque()) carro(s).")
                }
            }
        }
    }
    
    func setEstoque(carro: Int) {
        self.estoque = carro
    }
    
    func getEstoque() -> Int {
        return self.estoque
    }
    
}

let vendaCerta = LojaCarros(nome: "Venda Certa", cnpj: "11.222.333/0001-44", telefone: "(11) 1212-3434", marcaCarro: "Multi Marcas", estoque: 50)
vendaCerta.venderCarro(qtdCarros: 1, estoqueLoja: vendaCerta.getEstoque())
print("\n")
vendaCerta.venderCarro(qtdCarros: 5, estoqueLoja: vendaCerta.getEstoque())
print("\n")
vendaCerta.venderCarro(qtdCarros: 44, estoqueLoja: vendaCerta.getEstoque())
print("\n")
vendaCerta.venderCarro(qtdCarros: 2, estoqueLoja: vendaCerta.getEstoque())

print("\n----------------------\n")

let skina = LojaCarros(nome: "Skina", cnpj: "00.999.888/0001-77", telefone: "(15)", marcaCarro: "Fiat", estoque: 100)
skina.venderCarro(qtdCarros: 1, estoqueLoja: skina.getEstoque())
print("\n")
skina.venderCarro(qtdCarros: 60, estoqueLoja: skina.getEstoque())
print("\n")
skina.venderCarro(qtdCarros: 59, estoqueLoja: skina.getEstoque())
print("\n")
skina.venderCarro(qtdCarros: 40, estoqueLoja: skina.getEstoque())
print("\n")
