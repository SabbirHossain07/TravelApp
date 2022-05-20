//
//  InfoItemView.swift
//  Travel
//
//  Created by Sopnil Sohan on 21/5/22.
//

import SwiftUI

struct InfoItemView: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(title)
                .font(.system(size: 14, weight: .semibold))
                .foregroundColor(.gray)
            Text(description)
                .font(.system(size: 16))
        }
    }
}
