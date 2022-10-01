//
//  SignCarousel.swift
//  Road signs for kids
//
//  Created by Sergey Dolgikh on 13.08.2022.
//

import SwiftUI

struct SignCarousel: View {
    @FetchRequest(sortDescriptors: [])
    private var savedCurrentSigns: FetchedResults<CurrentSignModel>
    
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \FavoriteSignModel.dateAdded, ascending: true)],
        animation: .default
    )
    private var favoriteSigns: FetchedResults<FavoriteSignModel>
    
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.managedObjectContext) private var moc
    
    @State private var selectionSign: String = "first"
    
    let categorySings: SignRowModel
    var isFavorite = true
    
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
                        heartButton
                    } else {
                        trashButton
                    }
                }
            }
        }
        .onAppear { setSavedCurrenSign() }
    }
}

extension SignCarousel {
    
    private var isFavoriteCurrentSign: Bool {
        favoriteSigns.contains { $0.signNumber == selectionSign }
    }
    
    private var heartButton: some View {
        let isFavoriteCurrentSign = isFavoriteCurrentSign
        
        return Button {
            isFavoriteCurrentSign ? removeFromFavorites() : addToFavorites()
            
        } label: {
            Image(systemName: isFavoriteCurrentSign ? "heart.fill" : "heart")
                .foregroundColor( isFavoriteCurrentSign ? .red : Color.accentColor)
        }
    }
    
    private func addToFavorites() {
        print("добавление \(selectionSign)")
        
        let newFavoriteSign = FavoriteSignModel(context: moc)
        newFavoriteSign.signNumber = selectionSign
        newFavoriteSign.dateAdded = Date()
        
        try? moc.save()
    }
    
    private func removeFromFavorites() {
        print("Удаление \(selectionSign)")
        let currentFavoriteSign = favoriteSigns.first { $0.signNumber == selectionSign }
        guard let currentFavoriteSign = currentFavoriteSign else { return }
        
        moc.delete(currentFavoriteSign)
        try? moc.save()
    }
    
    private var trashButton: some View {
        Button {
            print("Удаление \(selectionSign)")
        } label: {
            Image(systemName: "trash")
        }
    }
    
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
