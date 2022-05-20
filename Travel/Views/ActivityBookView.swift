//
//  ActivityBookView.swift
//  Travel
//
//  Created by Sopnil Sohan on 21/5/22.
//

import SwiftUI

struct ActivityBookView: View {
    let price: String
    let previousPrice: String
    
    var body: some View {
        HStack(alignment: .lastTextBaseline) {
            VStack(alignment: .leading, spacing: 10) {
                Text("PRICE P/P")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(.gray)
                Text(price)
                    .font(.system(size: 20, weight: .bold))
            }
            Text(previousPrice)
                .font(.system(size: 22, weight: .bold))
                .foregroundColor(.gray)
                .strikethrough(true, color: .red)
            
            Spacer()
            
            Button {
                
            } label: {
                Text("Book Now")
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 8)
                    .background(Color.orange)
                    .cornerRadius(5)
            }

        }
    }
}
