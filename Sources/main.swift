//
//  main.swift
//  Perfect Cookie Demo
//
//  Created by Jonathan Guthrie on 2016-09-28.
//	Copyright (C) 2015 PerfectlySoft, Inc.
//
//===----------------------------------------------------------------------===//
//
// This source file is part of the Perfect.org open source project
//
// Copyright (c) 2015 - 2016 PerfectlySoft Inc. and the Perfect project authors
// Licensed under Apache License v2.0
//
// See http://perfect.org/licensing.html for license information
//
//===----------------------------------------------------------------------===//
//

import PerfectLib
import PerfectHTTP
import PerfectHTTPServer

// Create HTTP server.
let server = HTTPServer()

// Create the container variable for routes to be added to.
var routes = Routes()

// This route will return the list of cookies sent to the server from the client.
// Note that cookies are stored on the client browser, not the server.
routes.add(method: .get, uri: "/", handler: {
	request, response in

	// creating HTML response
	var str = "<html><title>Perfect Cookie Demo</title><body>"

	// Reading the request object's cookies
	str += "<div>Cookie mess here: \(request.cookies)</div>"

	// The link to the "set" route
	str += "<div>Set a cookie: <a href=\"/set\">Go...</a></div>"

	str += "</body></html>"

	// Setting the response content type explicitly to text/html
	response.setHeader(.contentType, value: "text/html")
	// Adding some HTML to the response body object
	response.appendBody(string: str)
	// Signalling that the request is completed
	response.completed()
	}
)

// This route sets a cookie on the client browser.
routes.add(method: .get, uri: "/set", handler: {
	request, response in

	/*
	Note that the Expiration enum is defined as follows:

	public enum Expiration {
		/// Session cookie with no explicit expiration
		case session
		/// Expiratiuon in a number of seconds from now
		case relativeSeconds(Int)
		/// Expiration at an absolute time given in seconds from epoch
		case absoluteSeconds(Int)
		///	Custom expiration date string
		case absoluteDate(String)
	}
	*/

	// This is the cookie object
	// Note that the name has no spaces... spaces are not a good thing in a cookie's name.
	// This cookie is set to expire in 60 seconds if left idle. The timer would be reset if the route is visited again
	var iLoveMyCookie = HTTPCookie(
		name: "PerfectCookie",
		value: "Perfect is awesome",
		domain: "localhost",
		expires: .relativeSeconds(60),
		path: "/",
		secure: false,
		httpOnly: false
	)

	// add the cookie object to the response object to be returned to the client browser.
	response.addCookie(iLoveMyCookie)

	// creating HTML response
	var str = "<html><title>Perfect Cookie Demo</title><body>"

	str += "<div>A cookie has been set.</div>"
	str += "<div><a href=\"/\">Go back and view cookies from client browser...</a></div>"

	str += "</body></html>"

	// Setting the response content type explicitly to text/html
	response.setHeader(.contentType, value: "text/html")
	// Adding some HTML to the response body object
	response.appendBody(string: str)
	// Signalling that the request is completed
	response.completed()
	}
)


// Add the routes to the server.
server.addRoutes(routes)

// Set a listen port of 8181
server.serverPort = 8181

do {
	// Launch the HTTP server.
	try server.start()
} catch PerfectError.networkError(let err, let msg) {
	print("Network error thrown: \(err) \(msg)")
}
