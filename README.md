# UITextViewWithStrangeFrameBug

This is the example-project for rdar://22029215	(http://www.openradar.me/22029215)

#Summary
iOS hangs indefinitely when a UITextView with strange frame gets layouted and also allocates indefinitely memory. I’m not sure how our app creates a UITextView with such a frame and i will definitely fix it in our app - although, as nobody can guarantee that all apps in the world will never create such a frame, and it leaves to a rather bad behaviour overall (the app will eat up all memory until it is killed and though iOS might kill some other apps before that happens, the app does no longer respond to user-input and the app-developer can’t catch that case), i think this is a quite critical issue.

#Steps to Reproduce
1. Open the attached project
2. Start it on an iOS 9 device or the simulator (works for me on the default iPad 2 / iPad Air / iPad Air 2 and iPad Retina simulator)
3. Nothing should happen in the app - especially, the background of the app will stay white and not turn red

If it did turn red, please retry (although it always worked for me so far).
Please note that it consumes more and more memory, so don’t leave it open while grabbing a coffee or so.

I also recorded a few seconds of the CPU-Usage and Allocations with instruments and added it to the project-folder.

#Expected Results
Adding a UITextView with a strange frame to the view-hierarchy should at worst show a crippled UITextView.

#Actual Results
The app hangs and consumes as much memory as it can.
