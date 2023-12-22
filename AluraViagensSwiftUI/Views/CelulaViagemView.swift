//
//  CelulaViagemView.swift
//  AluraViagensSwiftUI
//
//  Created by Ricardo dos Santos Amaral on 22/12/23.
//

import SwiftUI

struct CelulaViagemView: View {
    
    var viagem: Viagem
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(viagem.titulo)
                .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14 : 24))
            Image(viagem.imagem)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: self.horizontalSizeClass == .compact ? 125 : 200)
                .clipped()
            
            HStack {
                Text(viagem.quantidadeDeDias)
                    .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14 : 24))
                Spacer()
                Text(viagem.valor)
                    .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14 : 24))
            }
        }
    }
}

struct CelulaViagem_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CelulaViagemView(viagem: viagens[0])
                .environment(\.horizontalSizeClass, .compact)
                .previewLayout(.fixed(width: 350, height: 200))
            
            CelulaViagemView(viagem: viagens[0])
                .environment(\.horizontalSizeClass, .compact)
                .previewLayout(.fixed(width: 835, height: 300))
        }
    }
}
