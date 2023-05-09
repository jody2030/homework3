/*:
## App Exercise - A Functioning App
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 As you may have guessed, functions are key to making your app work. For example, in every exercise dealing with step count until now, you have simply assigned a number of steps to a `steps` variable. This isn't very realistic seeing as the number of steps you take increments one at a time and continues changing throughout the day.
 
 A reoccurring process like this is a perfect candidate for a function. Write a function called `incrementSteps` after the declaration of `steps` below that will increment `steps` by one and then print its value. Call the function multiple times and observe the printouts.
 */
var steps = 0
func incrementSteps() {
    steps += 1
    print("Steps :\(steps)")
}
incrementSteps()

//:  Similarly, if you want to regularly provide progress updates to your user, you can put your control flow statements that check on progress into a function. Write a function called `progressUpdate` after the declaration of `goal` below. The function should print "You're off to a good start." if `steps` is less than 10% of `goal`, "You're almost halfway there!" if `steps` is less than half of `goal`, "You're over halfway there!" if `steps` is less than 90% of `goal`, "You're almost there!" if `steps` is less than `goal`, and "You beat your goal!" otherwise. Call the function and observe the printout.


let goal = 1000
var step = 0

func progressUpdate() {
    let percentage = Double(steps) / Double(goal) * 100
    switch percentage {
    case ..<10:
        print("you're off to a good start")
    case ..<50:
        print("you're almost halfway there!")
    case ..<90:
        print("you're over halfway there!")
    case ..<100:
        print("you're almost there!")
    default:
        print("you beat your goal!")
    }
}
progressUpdate()
/*:
[Previous](@previous)  |  page 2 of 6  |  [Next: Exercise - Parameters and Argument Labels](@next)
 */
