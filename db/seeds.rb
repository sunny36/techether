# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

subject_list = [
	["Ruby on Rails", "Open source web applications framework written in Ruby, which follows the model-view-controller (MVC) architectural pattern."],
	["Ruby", "Dynamic, reflective, object-oriented, general-purpose programming language."],
	["Python", "Widely used general-purpose, high-level programming language."],
	["JavaScript", "Dynamic computer programming language."],
	["Java", "General-purpose computer programming language that is object-oriented, and designed to have as few dependencies as possible."],
	["C++", "General-purpose programming language that is object-oriented and provides memory manipulation."],
	["PHP", "Server-side scripting language designed for web development but also used as a general-purpose programming language."],
	["SQL", "Structured Query Language is a special-purpose programming language designed for managing data held in a relational database management system."],
	["C", "General-purpose, imperative computer programming language."],
	["ASP.NET", "Open source server-side Web application framework designed for Web development to produce dynamic Web pages."],
	["C#", "Multi-paradigm programming language encompassing strong typing, imperative, generic, object-oriented, and component-oriented programming disciplines."],
	["Django", "Open source web application framework written in Python, which follows the model-view-controller (MVC) architectural pattern."],
	["HTML", "HyperText Markup Language is the standard markup language used to create web pages."],
	["CSS", "Cascading Style Sheets is a style sheet language used for describing the look and formatting of a document written in a markup language."],
	["Smalltalk", "Object-oriented, dynamically typed, reflective programming language."],
	["Objective-C", "General-purpose, object-oriented programming language that is the main programming language used by Apple for OS X and iOS."],
	["Swift", "Multi-paradigm, compiled programming language created by Apple for iOS and OS X development."],
	["Scala", "Object-functional programming language for general software applications."],
	["Git", "Distributed revision control system with an emphasis on speed, data integrity, and support for distributed, non-linear workflows."],
	["AngularJS", "Open-source web application framework maintained by Google to address many of the challenges encountered in developing single-page applications."],
	["Ember.js", "Open-source client-side JavaScript web application framework based on the model-view-controller (MVC) software architectural pattern."],
	["R", "Programming language and software environment for statistical computing and graphics."],
	["MATLAB", "Matrix Laboratory is a multi-paradigm numerical computing environment and fourth-generation programming language"],
	["Haskell", "Standardized, general-purpose purely functional programming language, with non-strict semantics and strong static typing."],
	["Clojure", "A dialect of the Lisp programming language with an emphasis on function programming."],
	["Common Lisp", "A dialect of the Lisp programming language with the support of procedural, functional and object-oriented programming paradigms."],
	[".NET", "Software framework developed by Microsoft that runs primarily on Microsoft Windows."],
	["Bash", "Command processor that typically runs in a text window, where the user types commands that cause actions."],
	["F#", "Strongly typed, multi-paradigm programming language that encompasses functional, imperative, and object-oriented programming techniques."],
	["NoSQL", "Provides a mechanism for storage and retrieval of data that is modeled in means other than the tabular relations used in relational databases."],
	["WordPress", "Open-source blogging tool and a content management system (CMS) based on PHP and MySQL."],
	["Joomla", "Open-source content management system (CMS) for publishing web content."],
	["Drupal", "Open-source content-management framework written in PHP and distributed under the GNU General Public License."],
	["Visual Basic", "Third-generation event-driven programming language and integrated development environment (IDE) from Microsoft."],
	["Perl", "Family of high-level, general-purpose, interpreted, dynamic programming languages."],
	["Assembly Language", "Low-level programming language for a computer, or other programmable device, in which there is a very strong correspondence with the machine code."],
	["Grails", "Open source web application framework that uses the Groovy programming language (which is in turn based on the Java platform)."],
	["Groovy", "Dynamic, Object-oriented programming language for the Java platform."],
	["XML", "Extensible Markup Language is a markup language that defines a set of rules for encoding documents in a format which is both human-readable and machine-readable."],
	["Sinatra", "Open source software web application library and domain-specific language written in Ruby."],
	["Sass", "Syntactically Awesome Stylesheets is a scripting language that is interpreted into Cascading Style Sheets."],
	["CoffeeScript", "A programming language that transcompiles to JavaScript."],
	["jQuery", "Cross-platform JavaScript library designed to simplify the client-side scripting of HTML."],
	["Backbone.js", "A JavaScript library with a RESTful JSON interface and is based on the model–view–presenter (MVP) and Actor model application design paradigm."],
	["Ajax", "Asynchronous JavaScript and XML is a group of interrelated Web development techniques used on the client-side to create asynchronous Web applications."],
	["Dart", "Class-based, single inheritance, object-oriented programming language developed by Google with C-style syntax."],
	["Go", "Statically-typed language developed at Google, with syntax loosely derived from that of C, adding garbage collection, type safety and some dynamic-typing capabilities."],
	["Erlang", "General-purpose concurrent, garbage-collected programming language and runtime system."],
	["Fortran", "General-purpose, imperative programming language that is especiall suited to numeric computation and scientific computing."],
	["JADE", "Object-oriented software development and deployment platform product"],
	["LaTeX", "Lamport Tex is a document preparation system and document markup language."]];

subject_list.each do | name, description |
	Subject.create(name: name, description: description)
end

User.create(name: "Example User", email: "example@email.com", password: "examplepass")