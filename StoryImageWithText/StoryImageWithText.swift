//
//  StoryImageWithText.swift
//  StoryImageWithText
//
//  Created by mohamed hashem on 11/12/2020.
//

import AVKit

open class StoryImageWithText {

    public init() {}

    public func drawImagesAndText(backgroundColor: UIColor,
                                  text: String, TextColor: UIColor,
                                  fontSize: CGFloat, withImageAsBackGround: UIImageView?) -> UIImage {
        let renderer = UIGraphicsImageRenderer(size: CGSize(width: 512, height: 512))
        let newImage = renderer.image { ctx in

            let mouse =  withImageAsBackGround != nil ? withImageAsBackGround! : UIImageView(image: UIImage(color: backgroundColor, size: CGSize(width: 512, height: 512)))
            //let mouse = UIImageView(image: UIImage(color: backgroundColor, size: CGSize(width: 512, height: 512)))
            mouse.contentMode = .scaleAspectFit
            mouse.image?.draw(at: CGPoint(x: 0, y: 0))

            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.alignment = .center
            let attrs: [NSAttributedString.Key: Any] = [
                .font: UIFont.systemFont(ofSize: fontSize),
                .paragraphStyle: paragraphStyle,
                .foregroundColor: TextColor]
            let attributedString = NSAttributedString(string: text, attributes: attrs)
            attributedString.draw(with: CGRect(x: 32, y: 156, width: 480, height: 200), options: .usesLineFragmentOrigin, context: nil)
        }

        return newImage
    }
}

public extension UIImage {
    convenience init?(color: UIColor, size: CGSize = CGSize(width: 512, height: 512)) {
        let rect = CGRect(origin: .zero, size: size)
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0)
        color.setFill()
        UIRectFill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        guard let cgImage = image?.cgImage else { return nil }
        self.init(cgImage: cgImage)
    }

}
