//
//  CameraView.swift
//  PropelApp
//
//  Created by Brian Chukwuisiocha on 8/2/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        HStack(spacing: 0){
            
            Group{
                SideBar()
                
                Rectangle()
                    .fill(Color.gray.opacity(0.15))
                    .frame(width: 1)
                
                MainContent()
            }
        }
        .ignoresSafeArea()
        .frame(width: nil, height: nil, alignment: .leading)
        .background(Color("BG").ignoresSafeArea())
    }
    
    @ViewBuilder
    func MainContent()->some View{
        VStack(spacing: 6){
            
            // Search Bar...
            HStack(spacing: 8){
                Image(systemName: "magnifyingglass")
                    .font(.title3)
                    .foregroundColor(.gray)
                
                TextField("Search", text: .constant(""))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.bottom, 10)
            
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 15){
                    Text("Files")
                        .font(.largeTitle.bold())
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    let columns = Array(repeating: GridItem(.flexible(), spacing: 15), count: 3)
                    
                    LazyVGrid(columns: columns, spacing: 25) {
                        // files
                    }
                }
                .padding(.top, 30)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .padding(.top, 50)
        .padding(.horizontal, 25)
    }
    
    @ViewBuilder
    func SideBar()->some View{
        VStack{
            Text("Add file")
                .font(.title2)
                .fontWeight(.semibold)
            
            AddButton()
        }
        .frame(maxHeight: .infinity, alignment: .top)
        .padding(.vertical)
        .padding(.horizontal, 22)
        .padding(.top, 35)
    }
    
    @ViewBuilder
    func AddButton()->some View{
        Button{
            
        }label: {
            Image(systemName: "plus")
                .font(.title2)
                .foregroundColor(.white)
                .padding(15)
                .background(Color.black)
                .clipShape(Circle())
        }
        .padding(.top, 30)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

extension View{
    func getRect() -> CGRect{
        return UIScreen.main.bounds
    }
}
