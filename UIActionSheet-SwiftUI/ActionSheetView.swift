//
//  ActionSheetView.swift
//  UIActionSheet-SwiftUI
//
//  Created by Ikmal Azman on 20/02/2023.
//

import SwiftUI

/// `UIActionSheet` for `iOS 14`
struct ActionSheetView: View {
    
    @State var isShowingActionSheet = false
    @State var selection  = ""
    
    var body: some View {
        VStack(alignment: .center) {
            Text("Selected Options : \(selection)")
                .padding()
            Button("Select a Color") {
                /// Toggling the `isShowingActionSheet`, to indicate either UIActionSheet should show or else
                isShowingActionSheet.toggle()
            }
            /// `.actionSheet` : modifier to display UIActionSheet in SwiftUI
            .actionSheet(isPresented: $isShowingActionSheet) {
                /// ` ActionSheet` : SwiftUI object to create a representation of action in UIActionSheet
                ActionSheet(
                    title: Text("Select a Color"),
                    buttons: [
                        /// Specify the Options button in the UIActionSheet
                        .default(Text("Red")) {
                            selection = "Red"
                        },
                        
                            .default(Text("Green")) {
                                selection = "Green"
                            },
                        
                            .default(Text("Blue")) {
                                selection = "Blue"
                            },
                    ])
            }
        }
    }
}

struct ActionSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetView()
    }
}
