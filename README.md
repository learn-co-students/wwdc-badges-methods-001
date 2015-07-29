# WWDC Badges With Methods

## Objectives

1. Write custom methods to solve a few simple problems.
2. Call your methods to get the results that you need.
3. Run the tests to check your work.

## Introduction

You did such a great job last year at the [Apple Worldwide Developers Conference](https://developer.apple.com/wwdc/) that they've asked for you back—and now they want you to handle a few more tasks as well. It's more work than you could possible handle by yourself given the time frame, so you'll need to figure out how to pass off the instructions by creating some methods!

The speaker list is new this year, but it boasts a similarly astounding group.

* [Adele Goldberg](https://en.wikipedia.org/wiki/Adele_Goldberg_(computer_scientist))
* [Edsger Dijkstra](https://en.wikipedia.org/wiki/Edsger_W._Dijkstra)
* [Joan Clarke](https://en.wikipedia.org/wiki/Joan_Clarke)
* [Clarence Ellis](https://en.wikipedia.org/wiki/Clarence_Ellis_(computer_scientist))
* [Margaret Hamilton](https://en.wikipedia.org/wiki/Margaret_Hamilton_(scientist))
* [George Boole](https://en.wikipedia.org/?title=George_Boole)
* [Tim Berners-Lee](https://en.wikipedia.org/?title=Tim_Berners-Lee)
* [Jean Bartik](https://en.wikipedia.org/wiki/Jean_Bartik)

In addition to the name tags, the conference manager also wants you to print a personalized greeting for each speaker to inform each of them of their dressing room assignment back stage.

## Instructions

1. Open the `*.xcworkspace` and read the unit tests in `AppDelegateSpec`. Try to understand what each test is expecting to happen. (*Do not copy/paste the expected arrays from the tests into your method body. These are matchers for what your methods should produce programmatically at run time.*) You'll notice that Xcode generates three errors that show up in the Issue Navigator like this: ![](https://curriculum-content.s3.amazonaws.com/ios/wwdc-badges-methods/missingMethodErrors.png) This is normal and it just means that Xcode can't find the methods that are called in the tests—but of course it can't, you haven't written them yet!

2. Navigate to the `AppDelegate.h` header file. Declare three (`-`) instance methods within the `@interface`:
  * `makeBadgeForSpeaker:` that accepts one `NSString` argument named `speaker` and returns an `NSString`
  * `makeAllBadgesForSpeakers:` that accepts one `NSArray` argument named `speakers` and returns an `NSMutableArray`
  * `greetAndAssignRoomsToSpeakers:` that accepts on `NSArray` argument and named `speakers` and returns an `NSMutableArray`

3. Navigate to the `AppDelegate.m` implementation file. Using autocomplete, fill out the names of each method and define them to return `nil` (these minimum definitions are required to get those three errors to disappear and the test build to succeed). Run the tests (`⌘``U`) to make sure that the build succeeds but that the tests initially fail.

4. Redefine `makeBadgeForSpeaker:` to return an interpolated string that includes the speaker's name submitted through the argument, in the manner of `Hello, my name is <#speaker#>.`. Run the test that checks this method and tweak your method until it the test passes.

5. Redefine `makeAllBadgesForSpeakers:` to return a mutable array of eight (8) interpolated strings that each read `Hello, my name is <#speaker#>.`, one string for each speaker that will be at the conference. Run the test for this method and tweak your method body until the test passes.  
**Hint:** *Use a* `for` *loop to iterate over the argument array and, upon each iteration of the loop, add to your mutable array the interpolated string for that speaker's badge.*  
**Advanced:** *Utilize your your* `makeBadgeForSpeaker:` *method by calling it on the* `self` *keyword and supplying it with an argument string pulled from the* `speakers` *array.*

6. Redefine the `greetAndAssignRoomsToSpeakers:` method to iterate over the `speakers` argument array and create an interpolated string with each speaker's name and their dressing room number (which range from 1 through 8). The interpolated string should read: `Welcome, <#speaker#>! You'll be in dressing room <#roomNumber#>.` Add each string to a mutable array. Return the mutable array, then run the test and tweak your method body until the test passes.


