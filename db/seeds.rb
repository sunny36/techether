# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

subject_list = [
	["Ruby on Rails", "Open source web applications framework written in Ruby, which follows the model-view-controller (MVC) architectural pattern.", 
		"Frameworks,Web Development", "Framework,Web-Focused,Web Applications,MVC,Ruby",
    "http://upload.wikimedia.org/wikipedia/en/e/e9/Ruby_on_Rails.svg"],
	["Ruby", "Dynamic, reflective, object-oriented, general-purpose programming language.", 
		"General-Purpose", "General-Purpose,High-Level,Object-Oriented,Dynamically-Typed,Scripting",
    "http://upload.wikimedia.org/wikipedia/commons/7/73/Ruby_logo.svg"],
	["Python", "Widely used general-purpose, high-level programming language.", 
		"General-Purpose", "High-Level,Object-Oriented,General-Purpose,Dynamically-Typed,Scripting",
    "http://www.odd-e.com/material/public/resources/python/python.png"],
	["JavaScript", "Dynamic computer programming language.", 
		"Web Development", "Web-Focused,Dynamically Typed,Object-Oriented,Server-Side,Client-Side",
    "http://upload.wikimedia.org/wikipedia/commons/6/6a/JavaScript-logo.png"],
	["Java", "General-purpose computer programming language that is object-oriented, and designed to have as few dependencies as possible.",
		"Mobile Development,General-Purpose", "Android Development,High-Level,Object-Oriented,General-Purpose,Statically-Typed",
    "http://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Java_logo_and_wordmark.svg/1000px-Java_logo_and_wordmark.svg.png"],
	["C++", "General-purpose programming language that is object-oriented and provides memory manipulation.",
		"General-Purpose", "High-Level,Object-Oriented,Memory Manageable,General-Purpose,Statically-Typed",
    "http://rebelbox.com/wp-content/uploads/2013/07/c-logo.jpg"],
	["PHP", "Server-side scripting language designed for web development but also used as a general-purpose programming language.",
		"Web Development", "Web-Focused,Scripting,Server-Side,Dynamically-Typed",
    "http://upload.wikimedia.org/wikipedia/commons/thumb/2/27/PHP-logo.svg/2000px-PHP-logo.svg.png"],
	["SQL", "Structured Query Language is a special-purpose programming language designed for managing data held in a relational database management system.", 
		"Database Manipulation", "Database Manipulation",
    "http://www.sys2k.com/insights/wp-content/uploads/2012/02/sql-logo.png"],
	["C", "General-purpose, imperative computer programming language.",
		"General-Purpose", "Low-Level,Memory Manageable,General-Purpose,Statically-Typed",
    "http://upload.wikimedia.org/wikipedia/commons/thumb/3/35/The_C_Programming_Language_logo.svg/1000px-The_C_Programming_Language_logo.svg.png"],
	["ASP.NET", "Open source server-side Web application framework designed for Web development to produce dynamic Web pages.", 
		"Frameworks,Web Development", "Framework,Web-Focused,Web Applications,MVC,C#,Visual Basic",
    "http://gizmoblogr.com/wp-content/uploads/2013/09/ASP-NET-LOGO.png"],
	["C#", "Multi-paradigm programming language encompassing strong typing, imperative, generic, object-oriented, and component-oriented programming disciplines.", 
		"General-Purpose", "High-Level,Statically-Typed,General-Purpose,Object-Oriented,Memory Manageable",
    "http://upload.wikimedia.org/wikipedia/commons/0/0d/C_Sharp_wordmark.svg"],
	["Django", "Open source web application framework written in Python, which follows the model-view-controller (MVC) architectural pattern.", 
		"Frameworks,Web Development", "Framework,Web-Focused,Web Applications,MVC,Python",
    "http://www.unixstickers.com/image/data/stickers/django/django_badge.sh.png"],
	["HTML", "HyperText Markup Language is the standard markup language used to create web pages.", 
		"Web Development", "Web-Focused,Markup",
    "http://upload.wikimedia.org/wikipedia/commons/6/61/HTML5_logo_and_wordmark.svg"],
	["CSS", "Cascading Style Sheets is a style sheet language used for describing the look and formatting of a document written in a markup language.", 
		"Web Development", "Web-Focused,Stylesheets",
    "http://ohdoylerules.com/content/images/css3.svg"],
	["Smalltalk", "Object-oriented, dynamically typed, reflective programming language.", 
		"General-Purpose", "High-Level,Object-Oriented,Dynamically-Typed",
    "http://www.shingarov.com/SmalltalkBalloon.jpg"],
	["Objective-C", "General-purpose, object-oriented programming language that is the main programming language used by Apple for OS X and iOS.", 
		"Mobile Development", "iOS Development,Object-Oriented,General-Purpose,Statically-Typed,Memory Manageable",
    "http://i1.wp.com/1.bp.blogspot.com/-woaPWE2u3wQ/T2DYJS-cJbI/AAAAAAAAAC4/k_PdF-7-P2g/s1600/xcode.png"],
	["Swift", "Multi-paradigm, compiled programming language created by Apple for iOS and OS X development.", 
		"Mobile Development", "High-Level,Statically-Typed,iOS Development",
    "http://upload.wikimedia.org/wikipedia/en/4/43/Apple_Swift_Logo.png"],
	["Scala", "Object-functional programming language for general software applications.", 
		"General-Purpose", "Statically-Typed,Object-Functional,General-Purpose",
    "https://raw.githubusercontent.com/OlegIlyenko/scala-icon/master/scala-icon.png"],
	["Git", "Distributed revision control system with an emphasis on speed, data integrity, and support for distributed, non-linear workflows.",
		"Other", "Version Control",
    "https://assets-cdn.github.com/images/modules/logos_page/Octocat.png"],
	["AngularJS", "Open-source web application framework maintained by Google to address many of the challenges encountered in developing single-page applications.",
		"Web Development,Frameworks", "Framework,Web-Focused,JavaScript,MVC,Client-Side,Single-Page Applications",
    "https://lh6.googleusercontent.com/-TlY7amsfzPs/T9ZgLXXK1cI/AAAAAAABK-c/Ki-inmeYNKk/w749-h794/AngularJS-Shield-large.png"],
	["Ember.js", "Open-source client-side JavaScript web application framework based on the model-view-controller (MVC) software architectural pattern.",
		"Web Development,Frameworks", "Framework,Web-Focused,JavaScript,MVC,Client-Side,Single-Page Applications",
    "http://carefullycrafted.net/images/Ember.js_Logo_and_Mascot.png"],
	["R", "Programming language and software environment for statistical computing and graphics.",
		"Mathematics-Oriented", "Dynamically-Typed,Mathematics,Object-Oriented",
    "http://upload.wikimedia.org/wikipedia/commons/1/1b/R_logo.svg"],
	["MATLAB", "Matrix Laboratory is a multi-paradigm numerical computing environment and fourth-generation programming language",
		"Mathematics-Oriented", "Matrix Manipulation,Mathematics",
    "http://upload.wikimedia.org/wikipedia/commons/2/21/Matlab_Logo.png"],
	["Haskell", "Standardized, general-purpose purely functional programming language, with non-strict semantics and strong static typing.",
		"General-Purpose", "General-Purpose,Statically-Typed,Functional",
    "http://upload.wikimedia.org/wikipedia/commons/1/1c/Haskell-Logo.svg"],
	["Clojure", "A dialect of the Lisp programming language with an emphasis on function programming.",
		"General-Purpose", "Lisp Dialect,Functional,Dynamically-Typed",
    "https://lh5.googleusercontent.com/-CXtzXkFByt0/AAAAAAAAAAI/AAAAAAAAAAY/2MLu0BIONTY/photo.jpg"],
	["Common Lisp", "A dialect of the Lisp programming language with the support of procedural, functional and object-oriented programming paradigms.",
		"General-Purpose", "Lisp Dialect,Object-Oriented,Functional,Dynamically-Typed,General-Purpose",
    "http://fc05.deviantart.net/fs71/i/2010/085/f/6/Common_Lisp_Wallpaper_by_Pocket7878.png"],
	[".NET", "Software framework developed by Microsoft that runs primarily on Microsoft Windows.",
		"Frameworks", "Framework,Web Applications,C#,Visual Basic",
    "http://upload.wikimedia.org/wikipedia/de/thumb/5/5b/Microsoft_.NET_Logo.svg/1075px-Microsoft_.NET_Logo.svg.png"],
	["Bash", "Command processor that typically runs in a text window, where the user types commands that cause actions.",
		"Other", "Command Processor",
    "http://www.linuxbrigade.com/wp-content/uploads/2013/06/terminal.png"],
	["F#", "Strongly typed, multi-paradigm programming language that encompasses functional, imperative, and object-oriented programming techniques.",
		"General-Purpose", "Statically-Typed,Object-Oriented,General-Purpose,Functional",
    "http://verse.aasemoon.com/images/thumb/a/a8/FSharpLogo.png/250px-FSharpLogo.png"],
	["NoSQL", "Provides a mechanism for storage and retrieval of data that is modeled in means other than the tabular relations used in relational databases.",
		"Database Manipulation", "Database Manipulation",
    "https://blog.apigee.com/sites/blog/files/nosql-plm.png"],
	["WordPress", "Open-source blogging tool and a content management system (CMS) based on PHP and MySQL.",
		"Content Management Systems", "Content Management System,PHP,MySQL",
    "https://s.w.org/about/images/logos/wordpress-logo-simplified-rgb.png"],
	["Joomla", "Open-source content management system (CMS) for publishing web content.",
		"Content Management Systems", "Content Management System,PHP",
    "http://www.pixelsparadise.com/joomla_logo.png"],
	["Drupal", "Open-source content-management framework written in PHP and distributed under the GNU General Public License.",
		"Content Management Systems", "Content Management System,PHP",
    "https://www.drupal.org/files/druplicon.large_.png"],
	["Visual Basic", "Third-generation event-driven programming language and integrated development environment (IDE) from Microsoft.",
		"General-Purpose", "General-Purpose,Statically-Typed",
    "http://upload.wikimedia.org/wikipedia/fr/4/4a/Logo_VB.PNG"],
	["Perl", "Family of high-level, general-purpose, interpreted, dynamic programming languages.",
		"General-Purpose", "Scripting,Dynamically-Typed,General-Purpose,High-Level",
    "http://seeklogo.com/images/P/PERL-logo-392C2FBE62-seeklogo.com.gif"],
	["Assembly Language", "Low-level programming language for a computer, or other programmable device, in which there is a very strong correspondence with the machine code.",
		"Other", "Low-Level,Memory Manageable",
    "http://sd.keepcalm-o-matic.co.uk/i/keep-calm-and-fuck-assembly-code.png"],
	["Grails", "Open source web application framework that uses the Groovy programming language (which is in turn based on the Java platform).",
		"Web Development,Frameworks", "Framework,Web-Focused,Web Applications,MVC,Groovy",
    "http://www.unixstickers.com/image/cache/data/stickers/pivotal/Grails.sh-600x600.png"],
	["Groovy", "Dynamic, Object-oriented programming language for the Java platform.",
		"General-Purpose", "Dynamically-Typed,Object-Oriented,General-Purpose,Java",
    "http://groovy.codehaus.org/images/groovy-logo-medium.png"],
	["XML", "Extensible Markup Language is a markup language that defines a set of rules for encoding documents in a format which is both human-readable and machine-readable.",
		"Mobile Development,Web Development", "Web-Focused,Markup Language,Android Development",
    "http://tutorial.shiksha360.com/wp-content/uploads/2014/07/Collection-of-XML-documents.png"],
	["Sinatra", "Open source software web application library and domain-specific language written in Ruby.",
		"Web Development,Frameworks", "Framework,Web-Focused,Web Applications,Ruby",
    "http://www.padrinorb.com/images/glass.png"],
	["Sass", "Syntactically Awesome Stylesheets is a scripting language that is interpreted into Cascading Style Sheets.",
		"Web Development", "Web-Focused,Stylesheets",
    "http://sass-lang.com/assets/img/styleguide/seal-color-aef0354c.png"],
	["CoffeeScript", "A programming language that transcompiles to JavaScript.",
		"Web Development", "JavaScript,Web-Focused,Client-Side",
    "http://seanjmacisaac.com/projects/design/coffee-script_logo-01.png"],
	["jQuery", "Cross-platform JavaScript library designed to simplify the client-side scripting of HTML.",
		"Web Development", "JavaScript,Library,Client-Side,Web-Focused",
    "http://precision-software.com/wp-content/uploads/2014/04/jQurery.gif"],
	["Backbone.js", "A JavaScript library with a RESTful JSON interface and is based on the model–view–presenter (MVP) and Actor model application design paradigm.",
		"Web Development,Frameworks", "JavaScript,Library,Web Applications,Single-Page Applications",
    "http://www.codeforest.net/wp-content/uploads/2013/05/backbone.png"],
	["Ajax", "Asynchronous JavaScript and XML is a group of interrelated Web development techniques used on the client-side to create asynchronous Web applications.",
		"Web Development", "Web Applications,JavaScript,XML,Client-Side,Web-Focused",
    "http://www.altaformazionecontinua.it/wordpress/wp-content/uploads/2014/11/AJAX-logo.jpg"],
	["Dart", "Class-based, single inheritance, object-oriented programming language developed by Google with C-style syntax.",
		"Web Development", "Web-Focused,Object-Oriented",
    "https://www.dartlang.org/logos/dart-logo.png"],
	["Go", "Statically-typed language developed at Google, with syntax loosely derived from that of C, adding garbage collection, type safety and some dynamic-typing capabilities.",
		"General-Purpose", "General-Purpose,Statically-Typed",
    "http://i1-news.softpedia-static.com/images/news2/Go-1-Is-the-First-Stable-Version-of-Google-s-New-Programming-Language-2.png"],
	["Erlang", "General-purpose concurrent, garbage-collected programming language and runtime system.",
		"General-Purpose", "General-Purpose,Functional,Dynamically-Typed",
    "http://upload.wikimedia.org/wikipedia/commons/4/42/Erlang_logo.png"],
	["Fortran", "General-purpose, imperative programming language that is especially suited to numeric computation and scientific computing.",
		"General-Purpose,Mathematics-Oriented","General-Purpose,Mathematics,Object-Oriented",
    "http://upload.wikimedia.org/wikipedia/commons/0/07/Fortran_acs_cover.jpeg"],
	["LaTeX", "Lamport Tex is a document preparation system and document markup language.",
		"Mathematics-Oriented", "Markup,Mathematics",
    "http://upload.wikimedia.org/wikipedia/commons/9/92/LaTeX_logo.svg"],
  ["Node.js", "Open source, cross-platform runtime environment for server-side and networking applications.",
  	"Other", "JavaScript,Server-Side",
    "http://www.nicklascoker.uk/images/node-js.png"]];

    # Meteor.js, React.js

subjects = []

subject_list.each do | name, description, category, tags, image |
  subjects << Subject.create(name:name, description:description, category:category, tags:tags, image:image)
end

rails_resources = [
  ["The Ruby on Rails Tutorial", "Book", "Intermediate", "https://www.railstutorial.org"],
  ["UT on Rails", "Video", "Beginner", "http://www.schneems.com/ut-rails/"],
  ["Rails for Zombies", "Course", "Beginner", "http://railsforzombies.org"],
  ["Rails AntiPatterns: Best Practice Ruby on Rails Refactoring", "Book", "Intermediate", "http://www.amazon.ca/gp/product/B004C04QE0/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=B004C04QE0&linkCode=as2&tag=techether-20c"],
  ["Getting Started with Rails", "Guide", "Beginner", "http://guides.rubyonrails.org/getting_started.html"],
  ["Learn Rails Development", "Course", "Beginner", "http://teamtreehouse.com/tracks/rails-development"],
  ["The Odin Project: Ruby on Rails", "Course", "Intermediate", "http://www.theodinproject.com/ruby-on-rails"],
  ["Crafting Rails 4 Applications: Expert Practices for Everyday Rails Development", "Book", "Advanced", "http://www.amazon.ca/gp/product/1937785556/ref=as_li_tf_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=1937785556&linkCode=as2&tag=techether-20"]];

rails_resources.each do | title, source, difficulty, link |
  rails = Resource.create(title:title, source:source, difficulty:difficulty, subject_id:subjects[0].id, link:link)
end  

ruby_resources = [
  ["Codecademy: Ruby", "Course", "Beginner", "http://www.codecademy.com/en/tracks/ruby"],
  ["Learn Ruby the Hard Way", "Guide", "Beginner", "http://learnrubythehardway.org/book"],
  ["Why's (Poignant) Guide to Ruby", "Book", "Intermediate", "http://mislav.uniqpath.com/poignant-guide/"],
  ["The Pragmatic Programmer's Guide: Programming Ruby", "Book", "Beginner", "http://ruby-doc.com/docs/ProgrammingRuby/"],
  ["Humble Little Ruby Book", "Book", "Beginner", "http://humblelittlerubybook.com/book/"],
  ["Practicing Ruby", "Guide", "Intermediate", "https://practicingruby.com"],
  ["Learn to Program: Ruby", "Guide", "Beginner", "https://pine.fm/LearnToProgram/"]]

ruby_resources.each do | title, source, difficulty, link |
  ruby = Resource.create(title:title, source:source, difficulty:difficulty, subject_id:subjects[1].id, link:link)
end  

python_resources = [
  ["The Official Python Tutorial", "Guide", "Beginner", "https://docs.python.org/2/tutorial/"],
  ["Codecademy: Python", "Course", "Beginner", "http://www.codecademy.com/en/tracks/python"],
  ["TheNewBoston: Python Programming Tutorials", "Video", "Beginner", "https://www.thenewboston.com/videos.php?cat=98"],
  ["Learn Python the Hard Way", "Guide", "Beginner", "http://learnpythonthehardway.org"],
  ["Code Like a Pythonista: Idiomatic Python", "Guide", "Intermediate", "http://python.net/~goodger/projects/pycon/2007/idiomatic/handout.html"],
  ["A Byte of Python", "Guide", "Beginner", "http://www.swaroopch.com/notes/python/"],
  ["Understanding Python", "Video", "Advanced", "https://www.youtube.com/watch?v=HlNTheck1Hk"]]

python_resources.each do | title, source, difficulty, link |
  python = Resource.create(title:title, source:source, difficulty:difficulty, subject_id:subjects[2].id, link:link)
end  

javascript_resources = [
  ["Codecademy: Python", "Course", "Beginner", "http://www.codecademy.com/en/tracks/javascript"],
  ["A Smarter Way to Learn JavaScript", "Book", "Beginner", "http://www.amazon.ca/gp/product/B00H1W9I6C/ref=as_li_tf_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=B00H1W9I6C&linkCode=as2&tag=techether-20"],
  ["JavaScript: The Good Parts", "Book", "Intermediate", "http://www.amazon.ca/gp/product/0596517742/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=0596517742&linkCode=as2&tag=techether-20"],
  ["Eloquent JavaScript: A Modern Introduction to Programming", "Book", "Beginner", "http://www.amazon.ca/gp/product/1593275846/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=1593275846&linkCode=as2&tag=techether-20"],
  ["Learn JavaScript in 14 Days", "Video", "Beginner", "https://ilovecoding.org/courses/learn-javascript-in-14-days/"],
  ["Learning Advanced JavaScript", "Guide", "Advanced", "http://ejohn.org/apps/learn/#"],
  ["JavaScript Foundations", "Course", "Beginner", "http://teamtreehouse.com/library/javascript-foundations"],
  ["A Re-Introduction to JavaScript", "Guide", "Beginner", "https://developer.mozilla.org/en-US/docs/Web/JavaScript/A_re-introduction_to_JavaScript"]]

javascript_resources.each do | title, source, difficulty, link |
  javascript = Resource.create(title:title, source:source, difficulty:difficulty, subject_id:subjects[3].id, link:link)
end

java_resources = [
  ["Stanford University CS106A - Introduction to Java", "Course", "Beginner", "http://web.stanford.edu/class/cs106a/"],
  ["Mark Dexter's Eclipse and Java Tutorials", "Video", "Beginner", "http://eclipsetutorial.sourceforge.net"],
  ["Java: The Complete Reference", "Book", "Intermediate", "http://www.amazon.ca/gp/product/0071808558/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=0071808558&linkCode=as2&tag=techether-20"],
  ["Effective Java", "Book", "Intermediate", "http://www.amazon.ca/gp/product/0321356683/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=0321356683&linkCode=as2&tag=techether-20"],
  ["Head First Java", "Book", "Beginner", "http://www.amazon.ca/gp/product/0596009208/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=0596009208&linkCode=as2&tag=techether-20"],
  ["The Java Tutorials", "Guide", "Beginner", "http://docs.oracle.com/javase/tutorial/"],
  ["Thinking in Java", "Book", "Beginner", "http://www.amazon.ca/gp/product/0131872486/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=0131872486&linkCode=as2&tag=techether-20"]]

java_resources.each do | title, source, difficulty, link |
  java = Resource.create(title:title, source:source, difficulty:difficulty, subject_id:subjects[4].id, link:link)
end

cpp_resources = [
  ["C++ Language Tutorial", "Guide", "Beginner", "http://www.cplusplus.com/doc/tutorial/"],
  ["TheNewBoston: C++ Programming Tutorials", "Video", "Beginner", "https://www.thenewboston.com/videos.php?cat=16"],
  ["Programming: Principles and Practises Using C++", "Book", "Beginner", "http://www.amazon.ca/gp/product/0321992784/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=0321992784&linkCode=as2&tag=techether-20"],
  ["C++ Primer", "Book", "Intermediate", "http://www.amazon.ca/gp/product/0321714113/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=0321714113&linkCode=as2&tag=techether-20"],
  ["Effective C++", "Book", "Advanced", "http://www.amazon.ca/gp/product/0321334876/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=0321334876&linkCode=as2&tag=techether-20"],
  ["A Tour of C++", "Intermediate", "http://www.amazon.ca/gp/product/0321958314/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=0321958314&linkCode=as2&tag=techether-20"]]

cpp_resources.each do | title, source, difficulty, link |
  cpp = Resource.create(title:title, source:source, difficulty:difficulty, subject_id:subjects[5].id, link:link)
end

php_resources = [
  ["Codecademy: PHP", "Course", "Beginner", "http://www.codecademy.com/en/tracks/php"],
  ["TheNewBoston: PHP Programming Tutorials", "Video", "Beginner", "https://www.thenewboston.com/videos.php?cat=11"],
  ["PHPAcademy: Create a CMS with PHP", "Video", "Intermediate", "https://www.youtube.com/playlist?list=PLfdtiltiRHWE7kPatbL3y774836LrmINX"],
  ["PHPAcademy: Register & Login", "Video", "Intermediate", "https://www.youtube.com/playlist?list=PLE134D877783367C7"],
  ["PHP The Right Way", "Guide", "Beginner", "http://www.phptherightway.com"],
  ["The Joy of PHP", "Book", "Beginner", "http://www.amazon.ca/gp/product/B00BALXN70/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=B00BALXN70&linkCode=as2&tag=techether-20"],
  ["PHP Advanced and Object-Oriented Programming", "Book", "Advanced", "http://www.amazon.ca/gp/product/0321832183/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=0321832183&linkCode=as2&tag=techether-20"],
  ["PHP for the Web: Visual QuickStart Guide", "Book", "Beginner", "http://www.amazon.ca/gp/product/0321733452/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=0321733452&linkCode=as2&tag=techether-20"]]

php_resources.each do | title, source, difficulty, link |
  php = Resource.create(title:title, source:source, difficulty:difficulty, subject_id:subjects[6].id, link:link)
end

sql_resources = [
  ["SQL Tutorial", "Guide", "Beginner", "http://www.w3schools.com/sql/"],
  ["Sams Teach Yourself SQL in 24 Hours", "Book", "Beginner", "http://www.amazon.ca/gp/product/0672335417/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=0672335417&linkCode=as2&tag=techether-20"],
  ["Database Design with UML and SQL", "Guide", "Beginner", "http://www.tomjewett.com/dbdesign/dbdesign.php"],
  ["Learn SQL by Calculating Customer Lifetime Value", "Guide", "Intermediate", "http://blog.treasuredata.com/2014/12/05/learn-sql-by-calculating-customer-lifetime-value-part-1/"]]

sql_resources.each do | title, source, difficulty, link |
  sql = Resource.create(title:title, source:source, difficulty:difficulty, subject_id:subjects[7].id, link:link)
end

c_resources = [
  ["Learn C The Hard Way", "Guide", "Beginner", "http://c.learncodethehardway.org/book/"],
  ["C Programming Language", "Book", "Intermediate", "http://www.amazon.ca/gp/product/0131103628/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=0131103628&linkCode=as2&tag=techether-20"],
  ["The C Book", "Book", "Beginner", "http://publications.gbdirect.co.uk/c_book/"],
  ["The Practice of Programming", "Book", "Intermediate", "http://www.amazon.ca/gp/product/020161586X/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=020161586X&linkCode=as2&tag=techether-20"],
  ["Object Oriented Programming in C", "Book", "Intermediate", "http://www.planetpdf.com/codecuts/pdfs/ooc.pdf"]]

c_resources.each do | title, source, difficulty, link |
  c = Resource.create(title:title, source:source, difficulty:difficulty, subject_id:subjects[8].id, link:link)
end

asp_resources = [
  ["Learning ASP.NET", "Guide", "Intermediate", "http://www.asp.net"],
  ["ASP.NET MVC Tutorial", "Video", "Beginner", "https://www.youtube.com/watch?v=VAtVv1Q7ufM&spfreload=10"],
  ["Beginning ASP.NET 4.5: in C# and VB", "Book", "Beginner", "http://www.amazon.ca/gp/product/1118311809/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=1118311809&linkCode=as2&tag=techether-20"],
  ["Beginning ASP.NET 4.5 Databases", "Book", "Beginner", "http://www.amazon.ca/gp/product/1430243805/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=1430243805&linkCode=as2&tag=techether-20"],
  ["ASP.NET Music Store", "Guide", "Intermediate" ,"http://mvcmusicstore.codeplex.com"],
  ["Simple MVC Training", "Video", "Beginner", "https://www.youtube.com/playlist?list=PLuHX3xy0EKircW6z3tSDMGtgJgkHEWYi1"]]

asp_resources.each do | title, source, difficulty, link |
  asp = Resource.create(title:title, source:source, difficulty:difficulty, subject_id:subjects[9].id, link:link)
end

csharp_resources = [
  ["C# Programming Tutorial", "Video", "Beginner", "https://www.youtube.com/watch?v=OBsGRqXzOhk"],
  ["C# for Programmers", "Book", "Intermediate", "http://www.amazon.ca/gp/product/0133440575/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=0133440575&linkCode=as2&tag=techether-20"],
  ["CLR Via C#", "Book", "Intermediate", "http://www.amazon.ca/gp/product/0735667454/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=0735667454&linkCode=as2&tag=techether-20"],
  ["C# Tutorials", "Guide", "Beginner", "https://msdn.microsoft.com/en-us/library/aa288436(v=vs.71).aspx"],
  ["C# Programming", "Guide", "Beginner", "http://www.functionx.com/csharp/index.htm"],
  ["TheNewBoston: C# Beginner's Tutorial", "Video", "Beginner", "https://www.thenewboston.com/videos.php?cat=15"],
  ["Threading in C#", "Guide", "Advanced", "http://www.albahari.com/threading/"]]

csharp_resources.each do | title, source, difficulty, link |
  csharp = Resource.create(title:title, source:source, difficulty:difficulty, subject_id:subjects[10].id, link:link)
end

django_resources = [
  ["Writing Your First Django App", "Guide", "Beginner", "https://docs.djangoproject.com/en/dev/intro/tutorial01/"],
  ["The Django Book", "Book", "Beginner", "http://www.djangobook.com/en/2.0/index.html"],
  ["Test-Driven Development With Python", "Book", "Intermediate", "http://www.amazon.ca/gp/product/1449364829/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=1449364829&linkCode=as2&tag=techether-20"],
  ["Two Scoops of Django", "Book", "Beginner", "http://www.amazon.ca/gp/product/098146730X/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=098146730X&linkCode=as2&tag=techether-20"]]

django_resources.each do | title, source, difficulty, link |
  django = Resource.create(title:title, source:source, difficulty:difficulty, subject_id:subjects[11].id, link:link)
end

html_resources = [
  ["Codecademy: HTML & CSS", "Course", "Beginner", "http://www.codecademy.com/en/tracks/web"],
  ["Code School: HTML/CSS", "Course", "Beginner", "https://www.codeschool.com/paths/html-css"],
  ["HTML and CSS: Design and Build Websites", "Book", "Intermediate", "http://www.amazon.ca/gp/product/1118008189/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=1118008189&linkCode=as2&tag=techether-20"]]

html_resources.each do | title, source, difficulty, link |
  html = Resource.create(title:title, source:source, difficulty:difficulty, subject_id:subjects[12].id, link:link)
end

css_resources = [
  ["Codecademy: HTML & CSS", "Course", "Beginner", "http://www.codecademy.com/en/tracks/web"],
  ["Code School: HTML/CSS", "Course", "Beginner", "https://www.codeschool.com/paths/html-css"],
  ["HTML and CSS: Design and Build Websites", "Book", "Intermediate", "http://www.amazon.ca/gp/product/1118008189/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=1118008189&linkCode=as2&tag=techether-20"],
  ["CSS Tricks", "Guide", "Intermediate", "http://css-tricks.com"],
  ["A List Apart", "Guide", "Intermediate", "http://alistapart.com"]]

css_resources.each do | title, source, difficulty, link |
  css = Resource.create(title:title, source:source, difficulty:difficulty, subject_id:subjects[13].id, link:link)
end

smalltalk_resources = [
  ["Laser Game: A Development Example", "Guide", "Intermediate", "http://squeak.preeminent.org/tut2007/html/index.html"],
  ["On to Smalltalk", "Book", "Beginner", "http://www.amazon.ca/gp/product/0201498278/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=0201498278&linkCode=as2&tag=techether-20"],
  ["Pharo By Example", "Guide", "Beginner", "http://pharobyexample.org"]]

smalltalk_resources.each do | title, source, difficulty, link |
  smalltalk = Resource.create(title:title, source:source, difficulty:difficulty, subject_id:subjects[14].id, link:link)
end

objectivec_resources = [
  ["Learn Objective-C on the Mac: For OS X and iOS", "Book", "Beginner", "http://www.amazon.ca/gp/product/1430241888/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=1430241888&linkCode=as2&tag=techether-20"],
  ["iPhone Tutorials", "Guide", "Beginner", "http://www.raywenderlich.com/tutorials"],
  ["Programming with Objective-C", "Guide", "Beginner", "https://developer.apple.com/library/ios/documentation/Cocoa/Conceptual/ProgrammingWithObjectiveC/Introduction/Introduction.html"],
  ["iOS Programming: The Big Nerd Ranch Guide", "Book" ,"Intermediate", "http://www.amazon.ca/gp/product/0321942051/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=0321942051&linkCode=as2&tag=techether-20"],
  ["Stanford: Developing Apps for iOS", "Course", "Intermediate", "https://itunes.apple.com/WebObjects/MZStore.woa/wa/viewPodcast?id=395605774"],
  ["Objective-C Programming: The Big Nerd Ranch Guide", "Book", "http://www.amazon.ca/gp/product/B00GSRITM0/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=B00GSRITM0&linkCode=as2&tag=techether-20"],
  ["iOS Development with Objective-C", "Course", "Beginner", "http://teamtreehouse.com/tracks/ios-development-with-objectivec"]]

objectivec_resources.each do | title, source, difficulty, link |
  objectivec = Resource.create(title:title, source:source, difficulty:difficulty, subject_id:subjects[15].id, link:link)
end

swift_resources = [
  ["iOS Development with Swift", "Course", "Beginner", "http://teamtreehouse.com/tracks/ios-development-with-swift"],
  ["Stanford: Developing iOS Apps with Swift", "Course", "Intermediate", "https://itunes.apple.com/us/course/developing-ios-8-apps-swift/id961180099"],
  ["Exploring and Evaluating Swift Code in Playground", "Guide", "Beginner", "https://developer.apple.com/library/ios/recipes/xcode_help-source_editor/chapters/ExploringandEvaluatingSwiftCodeinaPlayground.html"],
  ["Build Your First iOS Game with Swift", "Guide", "Intermediate", "https://www.bloc.io/swiftris-build-your-first-ios-game-with-swift"],
  ["The Internet's Most Comprehensive Swift Resource", "Guide", "Intermediate", "http://www.sososwift.com"],
  ["The Complete iOS8 and Swift Course: Learn by Building 15 Real World Apps", "Course", "Beginner", "https://www.udemy.com/complete-ios-developer-course/"]]

swift_resources.each do | title, source, difficulty, link |
  swift = Resource.create(title:title, source:source, difficulty:difficulty, subject_id:subjects[16].id, link:link)
end

scala_resources = [
  ["Scala By Example", "Book", "Beginner", "http://www.scala-lang.org/docu/files/ScalaByExample.pdf"],
  ["Functional Programming Principles in Scala", "Course", "Intermediate", "https://www.coursera.org/course/progfun"],
  ["Scala Tutorials", "Guide", "Beginner", "http://scalatutorials.com/tour/"],
  ["Twitter Scala School", "Guide", "Beginner", "http://twitter.github.io/scala_school/"],
  ["Programming in Scala", "Book", "Intermediate", "http://www.amazon.ca/gp/product/0981531644/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=0981531644&linkCode=as2&tag=techether-20"],
  ["Beginning Scala", "Book", "Beginner", "http://www.amazon.ca/gp/product/1430219890/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=1430219890&linkCode=as2&tag=techether-20"]]

scala_resources.each do | title, source, difficulty, link |
  scala = Resource.create(title:title, source:source, difficulty:difficulty, subject_id:subjects[17].id, link:link)
end

git_resources = [
  ["Git Community Book", "Book", "Beginner", "http://git-scm.com/book/en/v2"],
  ["Getting Git", "Guide", "Beginner", "http://www.slideshare.net/chacon/getting-git"],
  ["A Visual Git Reference", "Guide", "Beginner", "http://marklodato.github.io/visual-git-guide/index-en.html"]]

git_resources.each do | title, source, difficulty, link |
  git = Resource.create(title:title, source:source, difficulty:difficulty, subject_id:subjects[18].id, link:link)
end

angular_resources = [
  ["AngularJS Fundamentals in 60 Minutes", "Video", "Beginner", "https://www.youtube.com/watch?v=i9MHigUZKEM"],
  ["AngularJS: Tutorial", "Guide", "Beginner", "https://docs.angularjs.org/tutorial"],
  ["How to Learn AngularJS", "Guide", "Beginner", "http://www.ng-newsletter.com/posts/how-to-learn-angular.html"],
  ["AngularJS - From Beginner to Expert", "Guide" ,"Intermediate", "http://www.ng-newsletter.com/posts/beginner2expert-how_to_start.html"],
  ["AngularJS Lessons", "Video", "Intermediate", "https://egghead.io/technologies/angularjs"],
  ["Mastering Web Application Development with AngularJS", "Book", "Advanced" ,"http://www.amazon.ca/gp/product/B00EQ67J30/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=B00EQ67J30&linkCode=as2&tag=techether-20"],
  ["The Complete Book on AngularJS", "Book", "Advanced", "http://www.amazon.ca/gp/product/099134460X/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=099134460X&linkCode=as2&tag=techether-20"]]

angular_resources.each do | title, source, difficulty, link |
  angular = Resource.create(title:title, source:source, difficulty:difficulty, subject_id:subjects[19].id, link:link)
end

ember_resources = [
  ["Ember Core Concepts", "Guide", "Beginner", "http://emberjs.com/guides/concepts/core-concepts/"],
  ["Embercasts", "Video", "Beginner", "http://www.embercasts.com"],
  ["Emberwatch", "Video", "Beginners", "http://emberwatch.com/screencasts.html"],
  ["Ember.js Code Walkthrough", "Guide", "Intermediate", "http://www.lukaszielinski.de/blog/posts/2013/02/23/ember-dot-js-code-walkthrough-video/"],
  ["Introduction to Ember", "Course", "Beginner", "http://www.tilde.io/events/introduction-to-ember-online/"],
  ["Ember for Beginners", "Course", "Beginner", "http://code.tutsplus.com/courses/ember-for-beginners"],
  ["Ember-CLI 101", "Book", "Beginner", "https://leanpub.com/ember-cli-101"]]

ember_resources.each do | title, source, difficulty, link |
  ember = Resource.create(title:title, source:source, difficulty:difficulty, subject_id:subjects[20].id, link:link)
end  

r_resources = [
  ["An Introduction to R", "Book", "Beginner", "http://cran.r-project.org/doc/manuals/R-intro.pdf"],
  ["The Art of R Programming", "Book", "Beginner", "http://www.amazon.ca/gp/product/1593273843/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=1593273843&linkCode=as2&tag=techether-20"],
  ["R Cookbook", "Book", "Intermediate", "http://www.amazon.ca/gp/product/0596809158/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=0596809158&linkCode=as2&tag=techether-20"],
  ["Econometrics in R", "Book", "Intermediate", "http://cran.r-project.org/doc/contrib/Farnsworth-EconometricsInR.pdf"],
  ["Statistics with R", "Book", "Advanced", "http://zoonek2.free.fr/UNIX/48_R/all.html"]]

r_resources.each do | title, source, difficulty, link |
  r = Resource.create(title:title, source:source, difficulty:difficulty, subject_id:subjects[21].id, link:link)
end

matlab_resources = [
  ["MATLAB Documentation", "Guide", "Beginner", "http://www.mathworks.com/help/matlab/"],
  ["MATLAB Cody", "Guide", "Intermediate", "http://www.mathworks.com/matlabcentral/cody"],
  ["Getting Started with MATLAB", "Book", "Beginner", "http://www.amazon.ca/gp/product/0199731241/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=0199731241&linkCode=as2&tag=techether-20"],
  ["MIT: Introduction to MATLAB Programming", "Course", "Beginner", "http://ocw.mit.edu/courses/mathematics/18-s997-introduction-to-matlab-programming-fall-2011/"],
  ["MATLAB: An Introduction with Applications", "Book", "Beginner", "http://www.amazon.ca/gp/product/1118629868/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=1118629868&linkCode=as2&tag=techether-20"]]

matlab_resources.each do | title, source, difficulty, link |
  matlab = Resource.create(title:title, source:source, difficulty:difficulty, subject_id:subjects[22].id, link:link)
end

haskell_resources = [
  ["Learning Haskell", "Guide", "Beginner", "https://github.com/bitemyapp/learnhaskell"],
  ["Ninety-Nine Haskell Problems", "Guide", "Intermediate", "https://wiki.haskell.org/99_questions"],
  ["Learn You a Haskell", "Book", "Beginner", "http://www.amazon.ca/gp/product/1593272839/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=1593272839&linkCode=as2&tag=techether-20"],
  ["Try Haskell", "Guide", "Beginner", "http://tryhaskell.org"],
  ["Haskell: The Craft of Functional Programming", "Book", "http://www.amazon.ca/gp/product/0201882957/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=0201882957&linkCode=as2&tag=techether-20"]]

haskell_resources.each do | title, source, difficulty, link |
  haskell = Resource.create(title:title, source:source, difficulty:difficulty, subject_id:subjects[23].id, link:link)
end

clojure_resources = [
  ["The Joy of Clojure", "Book", "Beginner", "http://www.amazon.ca/gp/product/1617291412/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=1617291412&linkCode=as2&tag=techether-20"],
  ["Clojure Documentation", "Guide", "Beginner", "http://clojure.org/documentation"],
  ["4Clojure", "Guide", "Intermediate", "http://www.4clojure.com"],
  ["Try Clojure", "Guide", "Beginner", "http://www.tryclj.com"],
  ["Clojure Cookbook", "Book", "Intermediate", "http://www.amazon.ca/gp/product/1449366171/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=1449366171&linkCode=as2&tag=techether-20"],
  ["Clojure for the Brave and True", "Guide", "Beginner", "http://www.braveclojure.com"],
  ["Programming Clojure", "Book", "Beginner", "http://www.amazon.ca/gp/product/1934356867/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=15121&creative=330641&creativeASIN=1934356867&linkCode=as2&tag=techether-20"]]

clojure_resources.each do | title, source, difficulty, link |
  clojure = Resource.create(title:title, source:source, difficulty:difficulty, subject_id:subjects[24].id, link:link)
end



User.create(name:"Example User", email:"example@email.com", password:"examplepass")