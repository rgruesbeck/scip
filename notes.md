# 1 Building Abstractions with Procedures
## 1.1 The Elements of Programming

	languages have 3 mechanisms for constructing programs:
	1. primitive expressions
	2. means of combination
	3. means of abstraction

### 1.1.1 Expressions
	prefix notation:

	(+ 137 349)
	operator, operands

	(+ (* 3 5) (- 10 6))
	nested

	pretty printing
	(+ 
		(* 3 5)
		(- 10 6)
	)

### 1.1.2 Naming and the Environment

	naming: (our first abstraction)

	the name identifies a variable whose value is the object

	(define size 2)
	causes the interpreter to associate the value 2 with the name size
	(* 5 size)

	the interpreter must maintain a memory of the name-object pairs. called the environment / global environment

### 1.1.3 Evaluating Combinations

	1. Evaluate subexpressions (recursive bit)
	2. Apply the procedure (left val) to the args

	example:
	(* (+ (* 4 6))
	   (+ 3 5 7))


	play: draw as a tree unil so the terminal nodes are only operators and numbers
	
	primitive cases are evalutated and
	results percolate up the tree (tree accumulation)

	primitive cases work because by agreeing that:
	1. the values of numerals are the numbers that they name
	2. the values of built-in operators are their coresponding machine instructions
	3. the values of names are their coresponding objects (in the environment)

	define is a special form.
	for example, (define x 3) does not apply define the operator to the operands x and 3
	
### 1.1.4 Compound Procedures

	A powerfull language needs	
	1. Numbers and arithmetic operations are primitive data and procedures
	2. Nesting of combinations provides a means of combining operations
	3. Definitions that associate names with values provide a limited means of abstraction

	procedure definitions: (the next abstraction)

	(define (square x) (* x x))
	(To square something, multiply it by itself)
	(define (<name> <formal parameters>) <body>)

	compound procedures are use just like primitive procedures
	eg. the procedure square could be built in or defined

### 1.1.5 The Substitution Model for Procedure Application

	applicative-order evaluation (evaluate the arguments, then apply)

	normal-order evaluation (fully expand, then reduce)
