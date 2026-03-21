import AppKit
import Foundation

struct RepoCard {
    let filename: String
    let bg: NSColor
    let panel: NSColor
    let stroke: NSColor
    let accent: NSColor
    let title: String
    let subtitle: String
    let motif: String
}

let cards: [RepoCard] = [
    RepoCard(
        filename: "og-v3-repo-gateway.png",
        bg: NSColor(calibratedRed: 0.03, green: 0.09, blue: 0.12, alpha: 1),
        panel: NSColor(calibratedRed: 0.05, green: 0.13, blue: 0.17, alpha: 1),
        stroke: NSColor(calibratedRed: 0.14, green: 0.73, blue: 0.82, alpha: 1),
        accent: NSColor(calibratedRed: 0.50, green: 0.91, blue: 0.96, alpha: 1),
        title: "Inference Serving",
        subtitle: "Gateway",
        motif: "GO"
    ),
    RepoCard(
        filename: "og-v3-repo-biollm.png",
        bg: NSColor(calibratedRed: 0.05, green: 0.11, blue: 0.09, alpha: 1),
        panel: NSColor(calibratedRed: 0.07, green: 0.16, blue: 0.12, alpha: 1),
        stroke: NSColor(calibratedRed: 0.13, green: 0.77, blue: 0.37, alpha: 1),
        accent: NSColor(calibratedRed: 0.53, green: 0.94, blue: 0.67, alpha: 1),
        title: "BioLLM-Finetune",
        subtitle: "Repository",
        motif: "DNA"
    ),
    RepoCard(
        filename: "og-v3-repo-climate.png",
        bg: NSColor(calibratedRed: 0.10, green: 0.14, blue: 0.20, alpha: 1),
        panel: NSColor(calibratedRed: 0.12, green: 0.16, blue: 0.22, alpha: 1),
        stroke: NSColor(calibratedRed: 0.96, green: 0.62, blue: 0.04, alpha: 1),
        accent: NSColor(calibratedRed: 0.99, green: 0.83, blue: 0.30, alpha: 1),
        title: "Climate Pipeline",
        subtitle: "Repository",
        motif: "CLM"
    )
]

let width: CGFloat = 1200
let height: CGFloat = 627
let outDir = URL(fileURLWithPath: "/Users/chranama/career/website/assets")

func saveCard(_ card: RepoCard) {
    let image = NSImage(size: NSSize(width: width, height: height))
    image.lockFocus()

    card.bg.setFill()
    NSBezierPath(rect: NSRect(x: 0, y: 0, width: width, height: height)).fill()

    card.panel.blended(withFraction: 0.20, of: NSColor.white)?.setFill()
    NSBezierPath(ovalIn: NSRect(x: 840, y: 360, width: 280, height: 280)).fill()

    let panelRect = NSRect(x: 100, y: 98, width: 1000, height: 431)
    card.panel.setFill()
    NSBezierPath(roundedRect: panelRect, xRadius: 28, yRadius: 28).fill()

    card.stroke.setStroke()
    let panelStroke = NSBezierPath(roundedRect: panelRect, xRadius: 28, yRadius: 28)
    panelStroke.lineWidth = 3
    panelStroke.stroke()

    let labelAttrs: [NSAttributedString.Key: Any] = [
        .font: NSFont.systemFont(ofSize: 38, weight: .bold),
        .foregroundColor: card.accent
    ]
    let titleAttrs: [NSAttributedString.Key: Any] = [
        .font: NSFont.systemFont(ofSize: 82, weight: .bold),
        .foregroundColor: NSColor(calibratedWhite: 0.97, alpha: 1)
    ]
    let subtitleAttrs: [NSAttributedString.Key: Any] = [
        .font: NSFont.systemFont(ofSize: 56, weight: .bold),
        .foregroundColor: card.accent
    ]

    NSString(string: "Repository").draw(at: NSPoint(x: 150, y: 445), withAttributes: labelAttrs)
    NSString(string: card.title).draw(at: NSPoint(x: 150, y: 320), withAttributes: titleAttrs)
    NSString(string: card.subtitle).draw(at: NSPoint(x: 150, y: 225), withAttributes: subtitleAttrs)

    let motifRect = NSRect(x: 860, y: 300, width: 180, height: 180)
    NSColor(calibratedRed: 0.02, green: 0.08, blue: 0.12, alpha: 1).setFill()
    NSBezierPath(roundedRect: motifRect, xRadius: 18, yRadius: 18).fill()

    let motifAttrs: [NSAttributedString.Key: Any] = [
        .font: NSFont.monospacedSystemFont(ofSize: 58, weight: .bold),
        .foregroundColor: card.accent
    ]
    NSString(string: card.motif).draw(at: NSPoint(x: 898, y: 360), withAttributes: motifAttrs)

    image.unlockFocus()

    guard let tiff = image.tiffRepresentation,
          let bitmap = NSBitmapImageRep(data: tiff),
          let png = bitmap.representation(using: .png, properties: [:]) else {
        print("Failed to encode \(card.filename)")
        return
    }

    let dest = outDir.appendingPathComponent(card.filename)
    do {
        try png.write(to: dest)
        print("Wrote \(dest.path)")
    } catch {
        print("Write error \(card.filename): \(error)")
    }
}

for card in cards {
    saveCard(card)
}
