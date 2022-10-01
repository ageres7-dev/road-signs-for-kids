//
//  SignCarousel.swift
//  Road signs for kids
//
//  Created by Sergey Dolgikh on 13.08.2022.
//

import SwiftUI

struct SignCarousel: View {
    @FetchRequest(sortDescriptors: [])
    var savedCurrentSigns: FetchedResults<CurrentSignModel>
    
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.managedObjectContext) var moc
    
    @State private var selectionSign: String = "first"
    
    let categorySings: SignRowModel
    var isFavorite = false
    
    var body: some View {
        
        let bindingSelectionSign = Binding(
            get: { self.selectionSign },
            set: {
                saveCurrent(sign: $0)
                self.selectionSign = $0
            }
        )
        
        ZStack {
            Group { colorScheme == .dark ? Color.black : Color.customBackground }
                .ignoresSafeArea()
            
            TabView(selection: bindingSelectionSign) {
                ForEach(categorySings.signs) { sing in
                    SignCard(model: sing)
                        .padding(.bottom, 34)
                        .tag(sing.numberSign)
                }
            }
            .navigationTitle(categorySings.title)
            .navigationBarTitleDisplayMode(.inline)
            .tabViewStyle(.page(indexDisplayMode: .always))
            .indexViewStyle(.page(backgroundDisplayMode: .always))
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    if isFavorite {
                        Button {
                            print("Удаление \(selectionSign)")
                        } label: {
                            Image(systemName: "trash")
                        }
                    } else {
                        EmptyView()
                    }
                }
            }
        }
        .onAppear { setSavedCurrenSign() }
    }
}

extension SignCarousel {
    private func saveCurrent(sign: String) {
        let newCurrentSign = CurrentSignModel(context: moc)
        newCurrentSign.category = categorySings.title
        newCurrentSign.sign = sign
        
        try? moc.save()
    }
    
    private func setSavedCurrenSign() {
        let savedCurrentSign = savedCurrentSigns.first {
            $0.category == categorySings.title
        }
        guard let savedSelectionSign = savedCurrentSign?.sign else { return }
        selectionSign = savedSelectionSign
    }
}

struct SignCarusel_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SignCarousel(categorySings: SignRowModel.modelForPreview)
                .environmentObject(AudioPlayerService.shared)
                .environment(\.managedObjectContext, DataController.preview.container.viewContext)
        }
    }
}
