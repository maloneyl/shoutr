# Upcase by Thoughtbot: Intermediate Ruby on Rails (Rails 5)

## 1: Setup & Authentication

Welcome to Intermediate Rails. We'll be building our own Twitter-like service called "Shoutr" where we'll create "Shouts" instead of "Tweets." This topic will let us explore many intermediate-level rails topics. In order to get started, we'll first need to focus on generating a rails application and setting up authentication. We'll be using the gem Clearance for authentication, but we'll need to do some custom configuration in order to get it to work the way we want. If you'd like to find out more about Clearance you can checkout the [GitHub repository](https://github.com/thoughtbot/clearance).

## 2: CRUD, Validations, and Partials

Let's continue by working on the MVP functionality for our application. We'll be adding the Shout model to our application. We'll talk about the correct ways to write migrations and validations. We'll also get to make use of routing constraints, a way to specify which routes should be active as well as partials. Additionally, we'll briefly discuss the Law of Demeter and how we can apply it to writing our applications.

## 3: Polymorphic Associations

It's time to talk about polymorphic associations! Polymorphic associations will allow us to start laying down the ground work to have multiple types of shouts. We'll first focus on refactoring our application to behave in a polymorphic behavior before we add a new type of shout. In order to migrate our old data, we'll need to write a relatively complex migration. We'll also discuss the differences between polymorphic associations and single-table inheritance (or STI for short). We'll discuss why using polymorphic behavior was the best decision for our application.

## 4: File Uploads with Paperclip

Now that we've refactored to polymorphic behavior, we can finally add our PhotoShout. In order to upload photos, we'll be making use of the [Paperclip gem](https://github.com/thoughtbot/paperclip). We'll use this gem in order to generate some thumbnails. In order to generate these thumbnails, you'll need to make sure to have imagemagick installed on your system. You can reference instructions [here](https://github.com/thoughtbot/paperclip#image-processor). We'll also make sure to add the [necessary validations](https://github.com/thoughtbot/paperclip#validations) to prevent XSS attacks.

## 5: Rails Helpers

With a bigger application, it sometimes makes sense to extract out view helpers. We'll discuss the dos and don'ts of adding helpers to our application. We'll add a helper for adding user avatars using Gravatar as well as a helper and related functionality for liking shouts. The last helper we'll add will provide the ability to mention other users in our shouts. We'll also discuss the Null Object Pattern by adding a Guest object to our application.

## 6: Complex Associations

When building an application it's quite common to want to model relationships between users that can follow each other. We'll dive into implementing this step by step in order to setup the correct associations in ActiveRecord. We'll also use the patterns we've learned to create useful view helpers. Additionally we'll look into adding counter caches for our follower and followed user counts for a more performant application. Finally we'll build out a timeline that features the shouts of the user as well as everyone they follow.

## 7: Refactoring

It's often important when developing an application to take some time to refactor. We'll discuss what parts of our application need refactoring and why. One topic we'll focus on is removing duplication for our polymorphic behavior. We'll investigate how we can use more powerful routes in order to generalize the problem without having to use solutions like metaprogramming to solve our problem. Additionally we'll continue to use view helpers to extract our view code to better handle our abstractions.

## 8: Advanced Refactoring

The single responsibility principle is one of the core principles of SOLID. It's a powerful idea that can guide programmers to writing more maintainable code. We'll take a look at our code and see where we might be violating this principle. We'll discuss ways to restructure our code in order to obey this principle. For instance, we'll extract some new types of objects in our application that allow us to address problems in our application more succinctly.

## 9: Basic Search

Search is a common functionality added to websites. We'll start nice and simple by implementing hashtags to our application. We'll want to reuse everything we've learned so far in order to write clean, concise, and maintainable code. We'll make sure to follow the single responsibility principle we just learned to extract both query and service objects to manage complex SQL and behavior.

## 10: Advanced Search

We're now going to make our searching functionality more complicated by taking into consideration our polymorphic behavior. We'll first start by implementing the functionality ourselves by employing the existing techniques we've learned. Afterwards, we'll look into using the search platform [SOLR](http://lucene.apache.org/solr/) with rails. We'll use the [Sunspot](https://github.com/sunspot/sunspot) gem in order to use SOLR with our Ruby objects and try to intigrate this external dependency in a clean way.
