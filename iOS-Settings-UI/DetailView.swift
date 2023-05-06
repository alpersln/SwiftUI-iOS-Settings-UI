//
//  DetailView.swift
//  iOS-Settings-UI
//
//  Created by Alper Sülün on 6.05.2023.
//

import SwiftUI

struct DetailView: View {
    let detailTitle: String
    var body: some View {
        Text(detailTitle).font(.title)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(detailTitle: "detail")
    }
}
