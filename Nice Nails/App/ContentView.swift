//
//  ContentView.swift
//  Nice Nails
//
//  Created by mac on 25.01.24.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    @State private var isTapped: Bool = false
    @State private var isShowingDesignSheet = false
    
    var body: some View {
        
        // MARK: - PROPERTIES
        
        let descriptionManicure: [DescriptionModel] = Bundle.main.decode("description_manicure.json")
        let designsManicure: [DesignModel] = Bundle.main.decode("designs_manicure.json")
        let mainPhoto: [MainPhotoModel] = Bundle.main.decode("main_photo.json")
        
        
        NavigationView {
            VStack {
                    
                // MARK: - NAVIGATION BAR
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.top, 5)
                
                List {
                    
                    // MARK: - SECTION HEADER
                    MaintPhotoView(mainPhoto: mainPhoto[0])
                        .listRowSeparator(.hidden)
                    
                    // MARK: - SECTION POPULAR SERVICES
                    
                    Section(header:
                        HStack {
                            Text("Популярные услуги")
                                .font(.system(size: 14))
                                .fontWeight(.thin)
                                .foregroundColor(.gray)
                            
                            Spacer()
                            
                            Group(content: {
                                NavigationLink(destination: ServicesView().toolbarRole(.editor)) {
                                    Text("Все услуги")
                                        .font(.system(size: 11))
                                        .fontWeight(.thin)
                                        .foregroundColor(.accentColor)
                                } //: NAVIGATION
                            }) //: GROUP
                        } //: HSTACK
                            .textCase(nil)
                    ) {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(descriptionManicure) { item in
                                    DescriptionListView(descriptionManicure: item)
                                } //: LOOP
                            } //: HSTACK
                        } //: SCROLLVIEW
                    } //: SECTION
                    .listSectionSeparator(.hidden)
                    
                    // MARK: - SECTION OUR DESIGNES
                    
                    Section(header: 
                        HStack {
                            Text("Наши дизайны")
                            .font(.system(size: 14))
                            .fontWeight(.thin)
                            .foregroundColor(.gray)
                        
                        Spacer()
                        
                        Group(content: {
                            NavigationLink(destination: DesignesView().toolbarRole(.editor)) {
                                Text("Все дизайны")
                                    .font(.system(size: 11))
                                    .fontWeight(.thin)
                                    .foregroundColor(.accentColor)
                                } //: NAVIGATION
                            }) //: GROUP
                        } //: HSTACK
                            .textCase(nil)
                    ) {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(designsManicure) { item in
                                    Button {
                                        isShowingDesignSheet.toggle()
                                    } label: {
                                        DesignsListView(designs: item)
                                            .foregroundColor(Color.primary)
                                    } //: BUTTON
                                } //: LOOP
                            } //: HSTACK
                            .sheet(isPresented: $isShowingDesignSheet, content: {
                                DesignSheetView(design: designsManicure[0])
                                    .presentationDragIndicator(.visible)
                                    .presentationDetents([.medium])
                                       })
                        } //: SCROLLVIEW
                    } //: SECTION
                    .listRowSeparator(.hidden)
                } //: LIST
                .listStyle(.plain)
            } //: VSTACK
        } //: NAVIGATION
    }
}

#Preview {
    ContentView()
}
