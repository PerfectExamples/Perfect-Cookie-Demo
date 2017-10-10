# Perfect Cookie Demo

[![Perfect logo](http://www.perfect.org/github/Perfect_GH_header_854.jpg)](http://perfect.org/get-involved.html)

[![Perfect logo](http://www.perfect.org/github/Perfect_GH_button_1_Star.jpg)](https://github.com/PerfectlySoft/Perfect)
[![Perfect logo](http://www.perfect.org/github/Perfect_GH_button_2_Git.jpg)](https://gitter.im/PerfectlySoft/Perfect)
[![Perfect logo](http://www.perfect.org/github/Perfect_GH_button_3_twit.jpg)](https://twitter.com/perfectlysoft)
[![Perfect logo](http://www.perfect.org/github/Perfect_GH_button_4_slack.jpg)](http://perfect.ly)


[![Swift 3.0](https://img.shields.io/badge/Swift-3.0-orange.svg?style=flat)](https://developer.apple.com/swift/)
[![Platforms OS X | Linux](https://img.shields.io/badge/Platforms-OS%20X%20%7C%20Linux%20-lightgray.svg?style=flat)](https://developer.apple.com/swift/)
[![License Apache](https://img.shields.io/badge/License-Apache-lightgrey.svg?style=flat)](http://perfect.org/licensing.html)
[![Twitter](https://img.shields.io/badge/Twitter-@PerfectlySoft-blue.svg?style=flat)](http://twitter.com/PerfectlySoft)
[![Join the chat at https://gitter.im/PerfectlySoft/Perfect](https://img.shields.io/badge/Gitter-Join%20Chat-brightgreen.svg)](https://gitter.im/PerfectlySoft/Perfect?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
[![Slack Status](http://perfect.ly/badge.svg)](http://perfect.ly) [![GitHub version](https://badge.fury.io/gh/PerfectlySoft%2FPerfect-CURL.svg)](https://badge.fury.io/gh/PerfectlySoft%2FPerfect-CURL)

A Cookie read/set example using Perfect

This example demonstrates the use or cookie read & set using Perfect's HTTP request and response objects.

This package builds with Swift Package Manager and is part of the [Perfect](https://github.com/PerfectlySoft/Perfect) project.

Ensure you have installed Xcode 8.0 or later.

## Setup - Xcode 8

NOTE: Steps below regarding the Library Search paths can be avoided by [installing swiftenv](https://swiftenv.fuller.li/en/latest/) and installing the Swift 3.0.1 preview toolchain.

```
# after installing swiftenv from https://swiftenv.fuller.li/en/latest/
swiftenv install https://swift.org/builds/swift-3.0.1-preview-1/xcode/swift-3.0.1-PREVIEW-1/swift-3.0.1-PREVIEW-1-osx.pkg
```

* Check out or download the project;
* In terminal, navigate to the directory and execute

```
swift package generate-xcodeproj
```

* Open `Perfect-Cookie-Demo.xcodeproj`
* Add to the "Library Search Paths" in "Project Settings" `$(PROJECT_DIR)`, recursive. **(This step will be unneeded in a future release of Xcode 8.)**
* Select the Executable build target from the build targets dropdown in Xcode
* Run (cmd-R) to build & run in Xcode.

In Xcode's console output pane you will see:

```
[INFO] Starting HTTP server on 0.0.0.0:8181 with document root ./webroot
```

* In a browser, visit [http://localhost:8181/](http://localhost:8181/)

## Setup - Terminal

* Check out or download the project;
* In terminal, navigate to the directory 
* Execute `swift build`
* Once the project has compiled, execute `./.build/debug/Perfect-Cookie-Demo`

The output you will see:

```
[INFO] Starting HTTP server on 0.0.0.0:8181 with document root ./webroot
```

* In a browser, visit [http://localhost:8181/](http://localhost:8181/)

## Included Routes

The following routes are included in this API for demonstration purposes:

* GET: [http://localhost:8181/](http://localhost:8181/) - Lists the cookies currently set in the browser for the domain.
* GET: [http://localhost:8181/set](http://localhost:8181/set) - Sets a cookie with an expiration of 60 seconds.


## Issues

We are transitioning to using JIRA for all bugs and support related issues, therefore the GitHub issues has been disabled.

If you find a mistake, bug, or any other helpful suggestion you'd like to make on the docs please head over to [http://jira.perfect.org:8080/servicedesk/customer/portal/1](http://jira.perfect.org:8080/servicedesk/customer/portal/1) and raise it.

A comprehensive list of open issues can be found at [http://jira.perfect.org:8080/projects/ISS/issues](http://jira.perfect.org:8080/projects/ISS/issues)


## Further Information
For more information on the Perfect project, please visit [perfect.org](http://perfect.org).
