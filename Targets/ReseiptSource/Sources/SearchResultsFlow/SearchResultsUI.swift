//
//  SearchResultsUI.swift
//  SUIReseipt
//
//  Created by Konstantin on 14.12.2025.
//

import SwiftUI

struct SearchResultsUI: View {
    
    private let historyData: [String] = [
        "My search history",
        "My favourite recipes",
        "Easy Mexican Casserole",
        "Thai Chicken Balls",
        "Honey Mustard Pork Chops",
        "Salsa Chicken Rice Casserole",
        "Banana Cinnamon Roll Casserole"
    ]
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                header
                Spacer()
                search
            }
        }
    }
    
    var search: some View {
        VStack(alignment: .leading) {
            ForEach(historyData.indices, id: \.self) { index in
                cell(
                    title: historyData[index],
                    isDividerExist: historyData.count - 1 != index
                )
            }
            
            Spacer()
        }
        .padding(.top, 6)
        .background(Color.white)
        .cornerRadius(24, corners: [.topLeft, .topRight])
        .offset(x: 0, y: -36)
    }
    
    func cell(title: String, isDividerExist: Bool) -> some View {
        VStack {
            HStack {
                Text(title)
                    .font(.captionMedium.customWeight(.ultraLight))
                
                Spacer()
                
                Image(systemName: "arrow.right")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 15, height: 11)
            }
            .padding(.vertical, 16)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
                .frame(height: 0.5)
                .opacity(isDividerExist ? 1 : 0)
        }
        .foregroundColor(.gray)
        .padding(.horizontal, 34)
    }
}

// MARK: - Header

private extension SearchResultsUI {
    var header: some View {
        GeometryReader { geometry in
            ZStack(alignment: .top) {
                headerImage
                    .frame(width: geometry.size.width)

                HStack {
                    backButton
                    Spacer()
                    helpTooltip
                }
                .padding(.horizontal, 16)
            }
        }
    }

    var headerImage: some View {
        Image("search-background-mock-3")
            .resizable()
            .scaledToFill()
            .ignoresSafeArea(edges: .top)
    }
}

// MARK: - Toolbar

private extension SearchResultsUI {
    var backButton: some View {
        Button {
            print("Back button tapped")
        } label: {
            backButtonImage
        }
        .frame(width: 40, height: 40)
        .background(Color.background.ghost, in: .circle)
    }

    var backButtonImage: some View {
        Image(systemName: "arrow.backward")
            .resizable()
            .scaledToFit()
            .frame(width: 20, height: 15)
            .tint(Color.white)
            .offset(x: 2)
    }

    var helpTooltip: some View {
        HStack(spacing: 8) {
            helpTooltipTitle
            helpTooltipImage
        }
        .padding(.vertical, 8)
        .padding(.horizontal, 8)
        .background(
            Color.white.opacity(0.7),
            in: RoundedRectangle(cornerRadius: 12)
        )
    }

    var helpTooltipTitle: some View {
        Text("Swipe to search by ingredients")
            .font(.callout)
            .fontWeight(.bold)
            .foregroundStyle(Color.black)
    }

    var helpTooltipImage: some View {
        Image(systemName: "chevron.right")
            .resizable()
            .scaledToFit()
            .frame(width: 15, height: 12)
            .foregroundColor(Color.black)
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

struct RoundedCorner: Shape {
    let radius: CGFloat
    let corners: UIRectCorner

    init(radius: CGFloat = .infinity, corners: UIRectCorner = .allCorners) {
        self.radius = radius
        self.corners = corners
    }

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}

struct SearchResultsUI_Previews: PreviewProvider {
    static var previews: some View {
        SearchResultsUI()
    }
}
