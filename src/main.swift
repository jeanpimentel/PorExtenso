import Foundation

public class PorExtenso
{
    let words = [
        ["zero", "um", "dois", "três", "quatro", "cinco", "seis", "sete", "oito", "nove"],
        ["dez", "onze", "doze", "treze", "quatorze", "quinze", "dezesseis", "dezessete", "dezoito", "dezenove"],
        ["", "", "vinte", "trinta", "quarenta", "cinquenta", "sessenta", "setenta", "oitenta", "noventa"],
        ["cem", "cento", "duzentos", "trezentos", "quatrocentos", "quinhentos", "seiscentos", "setecentos", "oitocentos", "novecentos"]
    ]

    let glue = " e "

    let shortScale = [("", ""), ("mil", "mil"), ("milhão", "milhões"), ("bilhão", "bilhões"), ("trilhão", "trilhões"), ("quatrilhão", "quatrilhões"), ("quintilhão", "quintilhões"), ("sextilhão", "sextilhões"), ("septilhão", "septilhões")]

    let longScale = [("", ""), ("mil", "mil"), ("milhão", "milhões"), ("mil milhões", "mil milhões"), ("bilião", "biliões"), ("mil bilião", "mil biliões"), ("trilião", "triliões"), ("mil trilião", "mil triliões"), ("quatrilião", "quatriliões")]

    public init() {

    }
    
    public func convert(n: Int) -> String
    {
        let pieces = self.slice(n)
        var results : Array<String> = [];

        for (i, piece) in enumerate(pieces) {

            let scale = (piece < 2) ? self.shortScale[i].0 : self.shortScale[i].1

            let block = self.convertBlock(piece) + ((i == 0) ? "" : (" " + scale))

            results.append(block)
        }

        return self.glue.join(results.reverse())
    }

    func convertBlock(n: Int) -> String
    {
        if n < 10 {
            return self.lt10(n)
        }

        if n < 100 {
            return self.gte10lt100(n)
        }

        if n < 1000 {
            return self.gte100lt1000(n)
        }

        return ""
    }

    func slice(n: Int) -> Array<Int> {

        let nStr = String(n)

        let groupSize = 3
        let nPieces = Int(ceil(Double(count(nStr)) / Double(groupSize)))

        var pieces:Array<Int> = [];

        for var i = 1; i <= nPieces; i++ {

            let s = ((groupSize*i) <= count(nStr)) ? (groupSize*i) : count(nStr)
            let e = (groupSize*i - groupSize)

            let sub = nStr[advance(nStr.endIndex, -s) ..< advance(nStr.endIndex, -e)]
            pieces.append(sub.toInt()!)
        }

        return pieces
    }

    func lt10(n: Int) -> String {
        return self.words[0][n]
    }

    func gte10lt100(n: Int) -> String {

        if n < 20 {
            return self.words[1][n - 10]
        }

        let d = n / 10
        let u = n % 10

        var r = self.words[2][d]
        if u > 0 {
            r += self.glue + self.lt10(u)
        }

        return r
    }

    func gte100lt1000(n: Int) -> String {

        let c = n / 100

        var n2 = n - (c * 100)

        if n2 == 0 {
            if c == 1 {
                return self.words[3][0]
            } else {
                return self.words[3][c]
            }
        }

        var r = (n2 < 10) ? self.lt10(n2) : self.gte10lt100(n2)
        return self.words[3][c] + self.glue + r
    }
}