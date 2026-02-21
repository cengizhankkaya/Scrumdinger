import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            // Üst kısımdaki ilerleme çubuğu
            ProgressView(value: 5, total: 15)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed") // Yazım hatası düzeltildi
                        .font(.caption)
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                }
            }
            // Ekran okuyucular için bu başlıkları bir grup olarak tanıtmak iyidir
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time remaining: 10 minutes")
            
            // Ortadaki büyük daire (Zamanlayıcı halkası)
            Circle()
                .strokeBorder(lineWidth: 24)
            // Alt kısımdaki kontroller
            HStack {
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: {
                    // Sonraki konuşmacıya geçme aksiyonu buraya gelecek
                }) {
                    Image(systemName: "forward.fill")
                }
                .accessibilityElement(children: .ignore)
                .accessibilityLabel("Next speaker")
                .accessibilityValue("10 minutes")
            }
        }
        .padding()
    }
}

#Preview {
    MeetingView()
}

