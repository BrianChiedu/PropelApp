//
//  FilesView.swift
//  PropelApp
//
//  Created by Brian Chukwuisiocha on 8/2/23.
//

import SwiftUI

struct FilesView: View {
    var body: some View {
        HomeView()
            .buttonStyle(BorderedButtonStyle())
            .textFieldStyle(PlainTextFieldStyle())
    }
}

struct FilesView_Previews: PreviewProvider {
    static var previews: some View {
        FilesView()
    }
}
