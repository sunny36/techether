# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

subject_list = [
	["Ruby on Rails", "Open source web applications framework written in Ruby, which follows the model-view-controller (MVC) architectural pattern.", 
		"Frameworks,Web Development"],#Web Applications,MVC,Ruby
	["Ruby", "Dynamic, reflective, object-oriented, general-purpose programming language.", 
		"General-Purpose"],#High-Level,Object-Oriented,Dynamically-Typed,General-Purpose,Scripting
	["Python", "Widely used general-purpose, high-level programming language.", 
		"General-Purpose"],#High-Level,Object-Oriented,General-Purpose,Dynamically-Typed,Scripting
	["JavaScript", "Dynamic computer programming language.", 
		"Web Development"],#Web-Focused,Dynamically Typed,Object-Oriented,Server-Side,Client-Side
	["Java", "General-purpose computer programming language that is object-oriented, and designed to have as few dependencies as possible.",
		"Mobile Development,General-Purpose"],#Android Development,High-Level,Object-Oriented,General-Purpose,Statically-Typed
	["C++", "General-purpose programming language that is object-oriented and provides memory manipulation.",
		"General-Purpose"], #High-Level,Object-Oriented,Memory Manageable,General-Purpose,Statically-Typed
	["PHP", "Server-side scripting language designed for web development but also used as a general-purpose programming language.",
		"Web Development"], #Web-Focused,Scripting,Server-Side,Dynamically-Typed
	["SQL", "Structured Query Language is a special-purpose programming language designed for managing data held in a relational database management system.", 
		"Database Manipulation"],
	["C", "General-purpose, imperative computer programming language.",
		"General-Purpose"], #Low-Level,Memory Manageable,General-Purpose,Statically-Typed
	["ASP.NET", "Open source server-side Web application framework designed for Web development to produce dynamic Web pages.", 
		"Frameworks,Web Development"], #Web Applications,MVC Frameworks,C#,Visual Basic
	["C#", "Multi-paradigm programming language encompassing strong typing, imperative, generic, object-oriented, and component-oriented programming disciplines.", 
		"General-Purpose"],#High-Level,Statically-Typed,General-Purpose,Object-Oriented,Memory Manageable
	["Django", "Open source web application framework written in Python, which follows the model-view-controller (MVC) architectural pattern.", 
		"Frameworks,Web Development"], #Web Applications,MVC Frameworks,Python
	["HTML", "HyperText Markup Language is the standard markup language used to create web pages.", 
		"Web Development"], #Web-Focused,Markup
	["CSS", "Cascading Style Sheets is a style sheet language used for describing the look and formatting of a document written in a markup language.", 
		"Web Development"], #Web-Focused,Stylesheets
	["Smalltalk", "Object-oriented, dynamically typed, reflective programming language.", 
		"General-Purpose"], #High-Level,Object-Oriented,Dynamically-Typed
	["Objective-C", "General-purpose, object-oriented programming language that is the main programming language used by Apple for OS X and iOS.", 
		"Mobile Development"], #iOS Development,Object-Oriented,General-Purpose,Statically-Typed,Memory Manageable
	["Swift", "Multi-paradigm, compiled programming language created by Apple for iOS and OS X development.", 
		"Mobile Development"], #High-Level,Statically-Typed,iOS Development
	["Scala", "Object-functional programming language for general software applications.", 
		"General-Purpose"], #Statically-Typed,Object-Functional,General-Purpose
	["Git", "Distributed revision control system with an emphasis on speed, data integrity, and support for distributed, non-linear workflows.",
		"Other"], #Version Control
	["AngularJS", "Open-source web application framework maintained by Google to address many of the challenges encountered in developing single-page applications.",
		"Web Development,Frameworks"], #JavaScript,MVC Frameworks,Client-Side,Single-Page Applications
	["Ember.js", "Open-source client-side JavaScript web application framework based on the model-view-controller (MVC) software architectural pattern.",
		"Web Development,Frameworks"], #JavaScript,MVC Frameworks,Client-Side,Single-Page Applications
	["R", "Programming language and software environment for statistical computing and graphics.",
		"Mathematics-Oriented"], #Dynamically-Typed,Mathematics,Object-Oriented
	["MATLAB", "Matrix Laboratory is a multi-paradigm numerical computing environment and fourth-generation programming language",
		"Mathematics-Oriented"], #Matrix Manipulation,Mathematics
	["Haskell", "Standardized, general-purpose purely functional programming language, with non-strict semantics and strong static typing.",
		"General-Purpose"], #General-Purpose,Statically-Typed,Functional
	["Clojure", "A dialect of the Lisp programming language with an emphasis on function programming.",
		"General-Purpose"], #Lisp Dialect,Functional,Dynamically-Typed
	["Common Lisp", "A dialect of the Lisp programming language with the support of procedural, functional and object-oriented programming paradigms.",
		"General-Purpose"], #Lisp Dialect,Object-Oriented,Functional,Dynamically-Typed,General-Purpose
	[".NET", "Software framework developed by Microsoft that runs primarily on Microsoft Windows.",
		"Frameworks"], #Frameworks,Web Applications,C#,Visual Basic
	["Bash", "Command processor that typically runs in a text window, where the user types commands that cause actions.",
		"Other"], #Command Processor
	["F#", "Strongly typed, multi-paradigm programming language that encompasses functional, imperative, and object-oriented programming techniques.",
		"General-Purpose"], #Statically-Typed,Object-Oriented,Functional
	["NoSQL", "Provides a mechanism for storage and retrieval of data that is modeled in means other than the tabular relations used in relational databases.",
		"Database Manipulation"],
	["WordPress", "Open-source blogging tool and a content management system (CMS) based on PHP and MySQL.",
		"Content Management Systems"],#Content Management Systems,PHP,MySQL
	["Joomla", "Open-source content management system (CMS) for publishing web content.",
		"Content Management Systems"], #Content Management Systems,PHP
	["Drupal", "Open-source content-management framework written in PHP and distributed under the GNU General Public License.",
		"Content Management Systems"], #Content Management Systems,PHP
	["Visual Basic", "Third-generation event-driven programming language and integrated development environment (IDE) from Microsoft.",
		"General-Purpose"], #Statically-Typed
	["Perl", "Family of high-level, general-purpose, interpreted, dynamic programming languages.",
		"General-Purpose"], #Scripting,Dynamically-Typed,General-Purpose,High-Level
	["Assembly Language", "Low-level programming language for a computer, or other programmable device, in which there is a very strong correspondence with the machine code.",
		"Other"], #Low-Level,Memory Manageable
	["Grails", "Open source web application framework that uses the Groovy programming language (which is in turn based on the Java platform).",
		"Web Development,Frameworks"], #Web Applications,MVC Frameworks,Groovy
	["Groovy", "Dynamic, Object-oriented programming language for the Java platform.",
		"General-Purpose"], #Dynamically-Typed,Object-Oriented,Java
	["XML", "Extensible Markup Language is a markup language that defines a set of rules for encoding documents in a format which is both human-readable and machine-readable.",
		"Mobile Development,Web Development"], #Markup Language,Android Development
	["Sinatra", "Open source software web application library and domain-specific language written in Ruby.",
		"Web Development,Frameworks"], #Web Applications,Frameworks,Ruby
	["Sass", "Syntactically Awesome Stylesheets is a scripting language that is interpreted into Cascading Style Sheets.",
		"Web Development"], #Web-Focused,Stylesheets
	["CoffeeScript", "A programming language that transcompiles to JavaScript.",
		"Web Development"], #JavaScript,Web-Focused,Client-Side
	["jQuery", "Cross-platform JavaScript library designed to simplify the client-side scripting of HTML.",
		"Web Development"], #JavaScript,Library,Client-Side,Web-Focused
	["Backbone.js", "A JavaScript library with a RESTful JSON interface and is based on the model–view–presenter (MVP) and Actor model application design paradigm.",
		"Web Development,Frameworks"], #JavaScript,Library,Web Applications,Single-Page Applications
	["Ajax", "Asynchronous JavaScript and XML is a group of interrelated Web development techniques used on the client-side to create asynchronous Web applications.",
		"Web Development"], #Web Applications,JavaScript,XML,Client-Side,Web-Focused
	["Dart", "Class-based, single inheritance, object-oriented programming language developed by Google with C-style syntax.",
		"Web Development"], #Web-Focused,Object-Oriented
	["Go", "Statically-typed language developed at Google, with syntax loosely derived from that of C, adding garbage collection, type safety and some dynamic-typing capabilities.",
		"General-Purpose"], #Statically-Typed
	["Erlang", "General-purpose concurrent, garbage-collected programming language and runtime system.",
		"General-Purpose"], #General-Purpose,Functional,Dynamically-Typed
	["Fortran", "General-purpose, imperative programming language that is especially suited to numeric computation and scientific computing.",
		"General-Purpose,Mathematics-Oriented"], #General-Purpose,Mathematics,Object-Oriented
	["LaTeX", "Lamport Tex is a document preparation system and document markup language.",
		"Mathematics-Oriented"], #Markup,Mathematics
  ["Node.js", "Open source, cross-platform runtime environment for server-side and networking applications.",
  	"Other"]]; #JavaScript,Server-Side

subject_list.each do | name, description, category|
	Subject.create(name:name, description:description, category:category)
end

User.create(name:"Example User", email:"example@email.com", password:"examplepass")