//
//  ContentView.swift
//  UIActionSheet-SwiftUI
//
//  Created by Ikmal Azman on 20/02/2023.
// https://www.hackingwithswift.com/quick-start/swiftui/how-to-show-an-action-sheet

import SwiftUI

/// `UIActionSheet` for `iOS 15 and above`
struct ConfirmationDialogView: View {
    
    @State var isShowingConfirmDialog = false
    @State var selection  = ""
    
    var body: some View {
        VStack(alignment: .center) {
            
            Text("Selected Options : \(selection)")
                .padding()
            Button("Select a Color") {
                /// Toggling the `isShowingActionSheet`, to indicate either UIActionSheet should show or else
                isShowingConfirmDialog.toggle()
            }
            /// `.confirmationDialog` : modifier to display UIActionSheet in SwiftUI
            /// `isPresented`: condition either to display the UIActionSheet or not, will presented if the value `true`
            .confirmationDialog(
                "Confirm paint color",
                isPresented: $isShowingConfirmDialog,
                titleVisibility: .visible) {
                    /// Specify the Options in the UIActionSheet
                    Button("Red", role: .destructive) {
                        selection = "Red"
                    }
                    
                    Button("Green") {
                        selection = "Green"
                    }
                    
                    Button("Blue") {
                        selection = "Blue"
                    }
                }
        }
        .padding()
    }
}

struct ConfirmationDialogView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationDialogView()
    }
}
