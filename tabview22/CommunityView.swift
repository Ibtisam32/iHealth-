//
//  AccountView.swift
//  tabview22
//
//  Created by Ibtisam on 02/04/1444 AH.
//

import SwiftUI

struct Item: Hashable {
    var name: String
    var image: String
    var catigory: String
    var points: String
    var time: String
}

struct CommunityView: View {
    
    //    @State var Community: [String] = ["You","Aldanah Alqabani", "Lina Almesfer","Nesreen Alfifi", "Ibtisam"]
    @State var items: [Item] = [
        Item(name: "You", image: "water", catigory:"Catigory: water💧", points: "Points: 5pt🏆", time: "Today at 02:00pm"),
        Item(name: "Ebtisam", image: "food", catigory:"Catigory: food🍽", points: "Points: 10pt🏆", time: "Today at 2:00pm"),
        Item(name: "Aldana", image: "food2", catigory:"Catigory: food🍽", points: "Points 10pt🏆", time: "Today at 2:00pm"),
        Item(name: "Nessreen", image: "gym", catigory:"Catigory: Gym🏋🏻‍♀️", points: "Points: 20pt🏆", time: "Today at 2:00pm"),
        Item(name: "Lina", image: "gym2", catigory:"Gym🏋🏻‍♀️", points: "20pt🏆", time: "Today at: 2:00pm"),
        
    ]
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(.white).colorMultiply(/*@START_MENU_TOKEN@*/Color(red: 0.424, green: 0.589, blue: 0.582)/*@END_MENU_TOKEN@*/)
                    .ignoresSafeArea()
                
 
                    VStack{
                        
                        HStack (spacing:90){
                            Text("Community")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            
                            
                            NavigationLink {
                                
                            } label: {
                                Image("points")
                                    
                                    .resizable()
                                    .frame(width: 60.0, height: 30.0)
                                    
                            }
                          
                                
                        }
                        
                        Image("pic4")
                            .resizable()
                            .frame(width: 370.0, height: 0.9)
                        
                        
                        List {
                            ForEach(items, id: \.self) { item in
                               
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 10.0)
                                            .fill(Color(hue: 1.0, saturation: 0.0, brightness: 0.958))
                                            .frame(height: 150)
                                        HStack {
                                            
                                            Image(item.image)
                                                .resizable()
                                                .frame(width: 126.0, height: 126.0)
                                            VStack(alignment: .leading){
                                                
                                                Text(item.name)
                                                    .fontWeight(.regular)
                                                    .font(.title)
                                                
                                                    .foregroundColor(.pink)
                                                    
                                                Text(item.catigory)
                                                    .font(.headline)
                                                    .fontWeight(.regular)
                                                    .foregroundColor(Color(red: 0.424, green: 0.589, blue: 0.582))
                                                    .lineLimit(0)
                                                Text(item.points)
                                                    .fontWeight(.regular)
                                                    .font(.headline)
                                                    .foregroundColor(Color(red: 0.424, green: 0.589, blue: 0.582))
                                                
                                                Text(item.time)
                                                    .fontWeight(.light)
                                                    .foregroundColor(.gray)
                                                    .font(.footnote)
                                            } .padding()
                                            
                                        }
                                    }
                                }
                                
                                
                                
                                
                        }
                            
                        }
                        
                        
                        
                    }
                    
                    
                }
                
            }
            
//            .navigationTitle("Home")
        }
    

    
    
    struct communityView_Previews: PreviewProvider {
        static var previews: some View {
             CommunityView()
        }
    }
