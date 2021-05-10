# autograder-grifh_asgn5
autograder-grifh_asgn5 created by GitHub Classroom

Assignment 5!

For this assignment, I was highly committed to getting some code. I know, ambitious. The code in racket that I have in racket does a somewhat ok job of translating python to the papers mpy language.
For example, in the first student example:

def computeDeriv(poly):
	deriv = []
	zero = 0
	if (len(poly) == 1):
		return deriv
	for e in range(0, len(poly)):
		if (poly[e] == 0):
			zero += 1
		else:
			deriv.append(poly[e]*e)
	return deriv

the function applyrules takes a line as a list of symbols and spits out a version of the line with the rules applies to it, for example = '(return deriv) -> (return (deriv [0])). I used 
the three rules in the first example explained. While the lines work when passed in individually, when using the wrapper func toSketch, it is not as consistent. I feel that had I installed sketch
on time, I think this formatting would have been amicable, but I had some issues initiated the git repos for back end. (on the bash autogen.sh  instruction from https://github.com/asolarlez/sketch-frontend/wiki
link specifically. Despite being a windows user, I don't have cygwin experience and I think I maybe messed something up. As for the paper in general, It seems from an efficiency standpoint and witht he rules that some good predictions
could be make on errors even without sketch, seeing as the program has already decided at that point what the options are, iterating them doesn't seem like to crazy a task, but I couldn't try sketch so I can't really say.
