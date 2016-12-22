# Perfect Cookie 示例 [English](README.md)

<p align="center">
    <a href="http://perfect.org/get-involved.html" target="_blank">
        <img src="http://perfect.org/assets/github/perfect_github_2_0_0.jpg" alt="Get Involed with Perfect!" width="854" />
    </a>
</p>

<p align="center">
    <a href="https://github.com/PerfectlySoft/Perfect" target="_blank">
        <img src="http://www.perfect.org/github/Perfect_GH_button_1_Star.jpg" alt="Star Perfect On Github" />
    </a>  
    <a href="http://stackoverflow.com/questions/tagged/perfect" target="_blank">
        <img src="http://www.perfect.org/github/perfect_gh_button_2_SO.jpg" alt="Stack Overflow" />
    </a>  
    <a href="https://twitter.com/perfectlysoft" target="_blank">
        <img src="http://www.perfect.org/github/Perfect_GH_button_3_twit.jpg" alt="Follow Perfect on Twitter" />
    </a>  
    <a href="http://perfect.ly" target="_blank">
        <img src="http://www.perfect.org/github/Perfect_GH_button_4_slack.jpg" alt="Join the Perfect Slack" />
    </a>
</p>

<p align="center">
    <a href="https://developer.apple.com/swift/" target="_blank">
        <img src="https://img.shields.io/badge/Swift-3.0-orange.svg?style=flat" alt="Swift 3.0">
    </a>
    <a href="https://developer.apple.com/swift/" target="_blank">
        <img src="https://img.shields.io/badge/Platforms-OS%20X%20%7C%20Linux%20-lightgray.svg?style=flat" alt="Platforms OS X | Linux">
    </a>
    <a href="http://perfect.org/licensing.html" target="_blank">
        <img src="https://img.shields.io/badge/License-Apache-lightgrey.svg?style=flat" alt="License Apache">
    </a>
    <a href="http://twitter.com/PerfectlySoft" target="_blank">
        <img src="https://img.shields.io/badge/Twitter-@PerfectlySoft-blue.svg?style=flat" alt="PerfectlySoft Twitter">
    </a>
    <a href="http://perfect.ly" target="_blank">
        <img src="http://perfect.ly/badge.svg" alt="Slack Status">
    </a>
</p>

使用Perfect读取/设置Cookie的示例

这个例子演示了使用Cookie读取和设置的Perfect's HTTP请求和响应对象

该项目通过SPM软件包管理器编译，是[Perfect](https://github.com/PerfectlySoft/Perfect)项目之一</br>
请确保您已经安装了Xcode 8.0或更高版本。

## 准备工作 - 使用Xcode 8

请注意: 下面关于库搜索路径的步骤可以通过 [安装 swiftenv](https://swiftenv.fuller.li/en/latest/) 并安装 Swift 3.0.1 预览版工具来避免.

```
# after installing swiftenv from https://swiftenv.fuller.li/en/latest/
swiftenv install https://swift.org/builds/swift-3.0.1-preview-1/xcode/swift-3.0.1-PREVIEW-1/swift-3.0.1-PREVIEW-1-osx.pkg
```

* 导出或下载工程;
* 在终端中，导航到目录并执行⬇️:

```
swift package generate-xcodeproj
```

* 打开 `Perfect-Cookie-Demo.xcodeproj`
* * 在"Library Search Paths"下的"Project Settings"中添加`$(PROJECT_DIR)`, recursive. **(这一步将不需要在更高版本的Xcode 8中做)**
* 在Xcode的构建目标下拉来选择可执行文件
* 在Xcode中使用(cmd-R)命令来编译运行项目工程

您将会在Xcode控制台看到如下输出:

```
[INFO] Starting HTTP server on 0.0.0.0:8181 with document root ./webroot
```

* 打开浏览器，通过[http://localhost:8181/](http://localhost:8181/)来访问
## 准备工作 - 使用终端

* 导出或下载工程
* 在终端中，导航到工程目录  
* 执行 `swift build` 命令
* 项目编译成功后, 请执行 `./.build/debug/Perfect-Weather`命令

您将会看到如下输出:

```
[INFO] Starting HTTP server on 0.0.0.0:8181 with document root ./webroot
```

* 打开浏览器，通过 [http://localhost:8181/](http://localhost:8181/)来访问

## 已包含的路由

此API中包含下列路由以供演示用途:

* GET: [http://localhost:8181/](http://localhost:8181/) - 列出为当前域名设置在浏览器中的cookie
* GET: [http://localhost:8181/set](http://localhost:8181/set) - 设置一个60秒后过期的cookie

## 问题报告

目前我们已经把所有错误报告合并转移到了JIRA上，因此github原有的错误汇报功能不能用于本项目。

您的任何宝贵建意见或建议，或者发现我们的程序有问题，欢迎您在这里告诉我们。[http://jira.perfect.org:8080/servicedesk/customer/portal/1](http://jira.perfect.org:8080/servicedesk/customer/portal/1)。

目前问题清单请参考以下链接： [http://jira.perfect.org:8080/projects/ISS/issues](http://jira.perfect.org:8080/projects/ISS/issues)



## 更多内容
关于Perfect更多内容，请参考[perfect.org](http://perfect.org)官网。
