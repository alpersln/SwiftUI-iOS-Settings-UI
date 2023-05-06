//
//  ContentView.swift
//  iOS-Settings-UI
//
//  Created by Alper Sülün on 6.05.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isAirplaneOn = false
    @State private var wifiSelection = "Home_wifi"
    let wifiNames = ["Home_wifi","Jane_2.4Ghz"]
    
    var body: some View {
        NavigationView {
            Form {
                HStack{
                    Image(systemName: "person.crop.circle").resizable()
                        .frame(width:50,height: 50).foregroundColor(.blue)
                    VStack(alignment: .leading){
                        Text("Ursula Le Guin").font(.title2)
                        Text("User email")
                        }
                    }
                
                // first section
                Section {
                   
                    //airplane
                    HStack {
                        IconView(iconColor: .orange, iconName: "airplane")
                        Toggle("Airplane Mode", isOn: $isAirplaneOn)
                    }
                    
                    // wifi
                    
                    // because of these codes same, lets create subview
                    HStack {
                        IconView(iconColor: .blue, iconName: "wifi")
                        Picker("Wi-Fi", selection: $wifiSelection) {
                            ForEach(wifiNames, id: \.self ) { name in
                                Text(name)
                            }
                        }
                    }
                    // bluetooth
                    NavigationLink(destination: DetailView(detailTitle: "Bluetooth")) {
                        IconView(iconColor: .blue, iconName: "bolt.horizontal.fill")
                        HStack {
                            Text("Bluetooth")
                            Spacer()
                            Text("On").foregroundColor(.gray)
                        }

                    }
                    // celluar
                    NavigationLink(destination: DetailView(detailTitle: "Celluar")) {
                        IconView(iconColor: .green, iconName: "antenna.radiowaves.left.and.right")
                        HStack {
                            Text("Celluar")
                            
                        }

                    }
                    // personal hotspot
                    NavigationLink(destination: DetailView(detailTitle: "Personal Hotspot")) {
                        IconView(iconColor: .green, iconName: "personalhotspot")
                        HStack {
                            Text("Personal Hotspot")
                            Spacer()
                            Text("On").foregroundColor(.gray)
                        }

                    }
                }
                // Section two
                
                Section {
                    //notifications
                    NavigationLink(destination: DetailView(detailTitle: "Notifications")) {
                        IconView(iconColor: .pink, iconName: "bell.badge.fill")
                        HStack {
                            Text("Notifications")
                            
                        }

                    }
                    // sounds & haptics
                    NavigationLink(destination: DetailView(detailTitle: "Sounds & Haptics")) {
                        IconView(iconColor: .pink, iconName: "speaker.wave.3.fill")
                        HStack {
                            Text("Sounds & Haptics")
                            
                        }
                    }
                    // focus
                    NavigationLink(destination: DetailView(detailTitle: "Focus")) {
                        IconView(iconColor: .indigo, iconName: "moon.fill")
                        HStack {
                            Text("Focus")
                            
                        }
                    }
                    // screen time
                    NavigationLink(destination: DetailView(detailTitle: "Screen Time")) {
                        IconView(iconColor: .indigo, iconName: "hourglass")
                        HStack {
                            Text("Screen Time")
                            
                        }
                    }
                }
                // third section
                Section(header: Text("About")) {
                    HStack {
                        Text("Version")
                        Spacer()
                        Text("1.0.0").foregroundColor(.gray)
                    }
                }
                
                }.navigationTitle("Settings")
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct IconView: View {
    
    let iconColor: Color
    let iconName: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 4).fill(iconColor)
                .frame(width: 28, height: 28)
            Image(systemName: iconName).foregroundColor(.white)
        }
    }
}
