//: [Previous](@previous) / [Next](@next)
//: # A Blank Canvas
//:
//: Use this page to experiment. Have fun!
/*:
 ## Required code
 
 The following statements are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 200, height: 100)





for x in stride(from: 1, through: 200, by: 1) {
// generate a height
let y = random(from: 1, toButNotIncluding: 101)
// draw line
    canvas.drawLine(fromX: x, fromY: 0, toX: x, toY: y)
}
// Generate Perlin noise ( it's  random number that's guaranteed to be different that the last random number but... close to the previous number)
let p = PerlinGenerator ()
// gives us a generator to usebe
var position = 0.0
let incriment = 0.9
for x in stride(from: 0, through: 200, by: 1) {
    //Move through Perlinspace
    position += incriment
    //Get a random number value from Perlin Space
//     they always range between -1 and 1
//     returns a double ( a decimal)
    _ = p.perlinNoise(x: position)
// convert the result into a value between 1 and 100
    let i = map (value: -1, fromLower: 1, fromUpper: 0, toLower: 0, toUpper: 100)
//    change the kine color
    canvas.lineColor = Color(hue: Int(i)+260, saturation: 80, brightness: 90, alpha: 100)
//     draw a line using this value
    canvas.drawLine(fromX: x, fromY: 0, toX: x, toY: Int (i))
}
/*:
 ## Add your code below
 
 Be sure to write human-readable code.
 
 Use whitespace and comments as appropriate.
 */
// Replace this comment with your first comment – what is the goal of the code you're about to write?



/*:
 ## Use source control
 To keep your work organized, and receive feedback, source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source_control.png "Source Control")
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right.
 
 Please do not remove.
 
 If you don't see output, remember to show the Assistant Editor, and switch to Live View:
 
 ![timeline](timeline.png "Timeline")
 */
// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView

