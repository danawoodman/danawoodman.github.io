---
title: "3 Helpful Golang Tips"
date: "2014-01-01"
description: "Below are a few things I've found useful as I learn and use Go in various projects. "
draft: true
---




## Packages Are Your Friends

The approach I've been taking lately is to start my projects in the `main` package and as I go *keep an eye for any emerging patterns* or abstractions I can make. 

Once I see something I feel can be pulled out of my code, I put it into a sub-directory in my project, give it a descriptive package name and then *import it into my main package*.

If a package is specific to the project I'm working on and would have little value as an external library, I'll keep it in the sub-directory. Otherwise, I will abstract out the package into it's own repository and *think more seriously about the public interface*.

Go makes creating new packages trivially easy: Just create a new folder `foo`, move your `foo` library over and change `package main` to `package foo`. I'd recommend taking advantage of that fact and abstract and encapsulate your code as much as possible using this convention.

This can be done in many other languages, but the fact that you can `go get` any code within a folder on Github or Google Code makes it simple to share packages with other developers or to reuse code in future projects.

If you're coming from a Ruby background like myself where you'd have to create a new Ruby Gem each time, you can see how this encourages code reuse at a language level.


## Use Zero Values to Your Advantage 

In Go, when a value is initialized *without a initializer value it returns the "zero value" of that type*.

In our contrived example below, when we initialize the `User` struct without an initialization value, we get the zero value of the struct. So when we get the `Admin` value, it returns the zero value for a boolean, which is `false`:

```go
package main

import "fmt"

type User struct {
    Name  string
    Admin bool
}

func main() {
    u := User{}
    fmt.Println(u.Admin) #=> false
}
```

We didn't explicity set `Admin` to `false`; *Go did that for us*. 

The following zero values are created for their respective types: 

- bool: `false`
- string: `""`
- int: `0`
- float: `0.0`
- pointers, functions, interfaces, slices, channels, and maps: `nil`

Learn more about this [here](http://golang.org/ref/spec#The_zero_value).


## Fall in Love With `for`

The `for` loop in Go is incredibly robust and fun to use. Here are a few examples of how to use `for` loops for various use cases:

```go
# Infinite loop:
for {
    # Do stuff...
}

# "Traditional" index loop:
for i := 0; i < 100; i++ {
    # Do stuff...
}

# Range with key and value:
for key, value := range arr {
    # Do stuff 
}

# Range with just key:
for key := range arr {
    # Do stuff 
}

# Range with just value:
for _, value := range arr {
    # Do stuff 
}
```

Learn more about the [Go `for` loop here](http://golang.org/doc/effective_go.html#for)
