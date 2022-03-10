import UIKit

// Enum

enum View: Int{
    case Home = 1, Favorite, Buy, about
    
    func getPage() -> Int{
        return self.rawValue
    }
}

var home = View.Home
var favorite = View.Favorite
print(home.getPage())
print(favorite.getPage())

// Ordenação de lista

var estudantes = ["Jailson", "George", "Carlos"]
estudantes.sort{(lhs: String, rhs: String) -> Bool in
    lhs < rhs
}

print(estudantes)

// Filter

var notas = [1,5,6,9,10]

print(notas.filter({ res in
    res >= 6
}))

//Reduce



//Palindromo

func isPalindromo(palavra: String) -> Bool{
    return palavra == String(palavra.reversed())
}


print(isPalindromo(palavra: "mirim"))
print(isPalindromo(palavra: "comida"))

