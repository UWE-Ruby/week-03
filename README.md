# Week 3

## Introduction

Repetition is the key to success. The exercises proposed this week again ask you to fork, clone, and fix various examples. However this time the safety net has been taken out from underneath you.

### Exercise Outline

* Fork and clone this repository
* Run the tests
* Fix the failing tests

### Choose Your Own Adventure

#### Command-Line

* Use HighLine to make a simple quiz

#### Web

* Use Sinatra to create a simple website

#### Exploration

* How can you make what you do easier to do?

## Exercise

The exercise are laid out in the same way as before. A word of warning about this set of exercises: Both the [Struct](http://rubydoc.info/stdlib/core/1.9.2/Struct) and [OpenStruct](http://rubydoc.info/stdlib/ostruct/1.9.2/frames) examples require a little more use of your noodle. For those tests the goal is to change the subject of the test of the helper methods to support the expectations that are outlined.

So when a test states the following:

```ruby
Person = Struct.new :name

describe Person do
  
  subject { Person.new "Ivan" }
  
  it "should have a role" do
    subject.should respond_to :role
  end
  
  it "should have the correct role" do
    subject.role.should == :teaching_assistant
  end
  
end
```

Your job would be to change the Struct to make the tests pass:

```ruby
# Added the role here to the struct
Person = Struct.new :name, :role

describe Person do
  
  # Added the role value here when creating the Person
  subject { Person.new "Ivan", :teaching_assistant }
  
  it "should have a role" do
    subject.should respond_to :role
  end
  
  it "should have the correct role" do
    subject.role.should == :teaching_assistant
  end
  
end
```

Besides this change, I hope this is becoming familiar to you. As the activity of forking, cloning, installing and running tests is very common and one you will likely continue to engage in throughout your development career.

* Fork and clone this repository
* Run Bundler
* Run the tests / Setup Guard
* Fix the failing tests
* Save your changes
* Share your changes


### Choose Your Own Adventure

There is a fork in the road here. Here you are welcome to choose that path that you take (or perhaps take first). This next exercise you can choose to build a command-line driven quiz or create a simple website.

Choose something simple and obtainable within a short amount of time. I encourage you to find a partner for this exercise. The two of you ideally will quickly sketch out an idea and then code the exercise together.

#### Command-Line

Create a series of questions that:

* Asks the user varying types of questions (yes/no,choices,input)
* Store the result of each of these questions
* At the end display the results back to the user

Your questions could take the form of a survey, setting up a dating profile, Ruby language test, walking through a fake configuration/installation etc.

Bonuses:

* Use the results that the user has given you to calculate a result
* Answers that fork to a different question based on the previous response
* Answer validation (for those open ended questions)
* Use colors

##### Getting Started

We purposefully skipped some some introductory programming examples where we output questions and then ask for responses. Usually this is done through `puts` and `gets`. Next week we are going to explore some questions and answer type programming but with a much more robust way with [Highline](http://rubydoc.info/gems/highline/1.6.2/frames).

Run the command:

```bash
$ rake highline
```

Or

```bash
$ ruby lib/highline.rb
```

    NOTE: Window's users need to use a backslash \ instead of forward slashes /

It should hopefully say hello and ask you a question. When you are happy with that open up `lib/highline.rb` and look at the syntax. You may have a strange sense of deja-vu when looking at this code. It looks very much like RSpec, Guard, Rake, and all these other files that we have used up until this point.

Take a stab at adding your own [questions, default answers, validations, or menus](http://rubydoc.info/gems/highline/1.6.2/frames).

#### Web

Create a web site:

* Shows some information
* Asks for some information from the user through a form
* When they submit the form display the results back to the user

Your questions could take the form of a survey, setting up a profile/account, Ruby language test, fake user configuration screen.

Bonuses:

* Use view templates
* Use a route pattern
* Stylesheets and Javascript (if you are comfortable with them)


##### Getting Started

[Sinatra](http://www.sinatrarb.com/intro.html) is an awesome way to create websites in ruby very quickly and easily.

Run the command:

```bash
$ rake sinatra
```

Or

```bash
$ ruby lib/sinatra.rb
```

    NOTE: Window's users need to use a backslash \ instead of forward slashes /

It should launch a website on `localhost:4567` that if you visit in your browser. When that is working for you open up `lib/sinatra.rb` and look at the syntax. Again you may have a strange sense of deja-vu when looking at the code.

Look at the [documentation](http://www.sinatrarb.com/intro.html) and create some of your own routes and play with parameters.

To exit the sinatra process in your terminal, use Ctrl-C.

## Exploration

There are tasks that you are likely finding yourself doing a lot. This week's exploration simply: *Reflect on the way that you work and think about what you could do to make yourself more productive.*

This is as always unique to your style, your tools, and your environment so there is no explicit goal in mind. The most important thing is to take the time to reflect and see what you can do to make changes.

Outlined below are a few areas that might give you some ideas where to start. I encourage you to not just look at your tools but also look at your life and identify some changes that may make an impact on how on how you work.

I encourage that after you find the area you want to change you make a small change or a few small changes. Try not send your whole process into upheaval. The name of the game is to make lasting changes through incremental improvements.

### Git

You may find yourself typing very similar commands that you wish you had shortcuts. Perhaps taking the time to set up a few [git aliases](http://superuser.com/questions/169695/what-are-your-favorite-git-aliases) would make your life easier.

Perhaps the command-line thing isn't your thing and you really wish you had a visual client. Perhaps a google search would lead you out of the darkness?

### Editor

#### Syntax Highlighting

If you are still developing Ruby in black & white then it might be time to find a way to have your code appear in various colors. Syntax highlighting can often help your way around the code faster exposing issues when you forget to close a string, block or function.

#### Shortcut Keys

When you are looking for a particular line or searching for a particular word do you have to navigate through the menu? When you want to save or open a particular file do you have to navigate a lot of menus? All that time can be saved if you knew the short-cut keys for your editor (assuming, of course that they provide them for you).

#### Auto-Completion and Code Snippets

Several editors provide tools to help make you faster when you are typing the same things over and over again. Does your editor provide ways for you to easily re-use pieces of code.

#### Plugins

Perhaps your editor has additional plugins that someone has already written that you could install to do some things easier.

### Operating System

When you open up a terminal / command window are you in the right directory? Is it easy to open a file with your editor? Do you spend lots of time moving around windows, getting back to the work that you are doing? etc.
