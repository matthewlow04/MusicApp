import SwiftUI

struct ProfileRowView: View {
    var track: [UITestTrack]
    var header: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text(header)
                    .modifier(HeaderModifier())
            }
            
            let screenWidth = UIScreen.main.bounds.width
            let imageSize = (screenWidth - 80) / 3 // Adjusting for padding and spacing
            
            HStack(spacing: 20) {
                ForEach(0 ..< min(track.count, 3)) { index in
                    VStack{
                        AsyncImage(url: URL(string: track[index].image.url)) { image in
                            image.resizable()
                        } placeholder: {
                            Color.gray.opacity(0.5)
                        }
                        .frame(width: imageSize, height: imageSize)
                        .clipShape(RoundedRectangle(cornerRadius: 3))
                        
                        Text(track[index].name)
                            .font(.footnote)
                            .opacity(0.5)
                            .lineLimit(2)
                            .frame(width: imageSize, height: 40, alignment: .top)
                    }
                   
                }
            }
        }
    }
}

#Preview {
    ProfileRowView(track: UITestTrack.MOCK_TRACKS, header: "Featured Tracks")
}

struct UITestTrack {
    var image: UITrackImage
    var name: String

    static var MOCK_TRACKS: [UITestTrack]  = [
        .init(image: UITrackImage(height: 300, url: "https://i.scdn.co/image/ab67616d0000b2733d92b2ad5af9fbc8637425f0", width: 300), name: "Sparks"),
        .init(image: UITrackImage(height: 300, url: "https://i.scdn.co/image/ab67616d0000b2737aede4855f6d0d738012e2e5", width: 300), name: "Pyramids"),
        .init(image: UITrackImage(height: 300, url: "https://i.scdn.co/image/ab67616d0000b273d9194aa18fa4c9362b47464f", width: 300), name: "Runawayasdfasdfasdf")
    ]
}

struct UITrackImage: Codable {
    let height: Int
    let url: String
    let width: Int
}
