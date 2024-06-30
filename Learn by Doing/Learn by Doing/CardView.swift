//
//  CardView.swift
//  Learn By Doing
//
//  Created by Eliezer Antonio on 29/06/24.
//

import SwiftUI

struct CardView: View {
    // MARK: - Properties

    @State private var fadeIn: Bool = false
    @State private var moveDownward: Bool = false
    @State private var moveUpward: Bool = false
    @State private var showAlert: Bool = false

    var hepaticImpact = UIImpactFeedbackGenerator(style: .heavy)

    var card: Card

    // MARK: - CARD

    var body: some View {
        ZStack {
            Image(card.imageName)
                .opacity(fadeIn ? 1.0 : 0.0)

            VStack {
                Text(card.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)

                Text(card.headline)
                    .fontWeight(.light)
                    .foregroundStyle(Color.white)
                    .italic()
            }
            .offset(y: moveDownward ? -218 : -300)

            Button(action: {
                playSound(sound: "sound.chime", type: "mp3")

                self.hepaticImpact.impactOccurred()
                self.showAlert.toggle()
            }) {
                Text(card.callToAction.uppercased())
                    .fontWeight(.heavy)
                    .foregroundStyle(Color.white)
                    .accentColor(Color.white)

                Image(systemName: "arrow.right.circle")
                    .font(.title.weight(.medium))
                    .accentColor(Color.white)
            }
            .padding(.vertical)
            .padding(.horizontal, 20)
            .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .leading, endPoint: .trailing))
            .clipShape(Capsule())
            .shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
            .offset(y: moveUpward ? 210 : 300)
        }
        .frame(width: 335, height: 545)
        .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .shadow(radius: 16)
        .onAppear {
            withAnimation(.linear(duration: 1.2)) {
                self.fadeIn.toggle()
            }
            withAnimation(.linear(duration: 0.8)) {
                self.moveDownward.toggle()
                self.moveUpward.toggle()
            }
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text(card.title),
                  message: Text(card.message),
                  dismissButton: .default(Text("OK"))
            )
        }
    }
}

#Preview {
    CardView(card: Card(
        title: "SwiftUI 2",
        headline: "Better apps. Less code.",
        imageName: "developer-no1",
        callToAction: "Design",
        message: "Introducing a modern way to design user interfaces for any Apple devices.",
        gradientColors: [Color("Color01"), Color("Color02")])
    )
}
