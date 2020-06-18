![Version](https://img.shields.io/badge/Version-4.0.0-blue.svg)
[![Build Status](https://travis-ci.org/MakeAWishFoundation/SwiftyMocky.svg?branch=master)](https://travis-ci.org/MakeAWishFoundation/SwiftyMocky)
[![Docs](https://cdn.rawgit.com/MakeAWishFoundation/SwiftyMocky/master/docs/badge.svg)](https://cdn.rawgit.com/MakeAWishFoundation/SwiftyMocky/master/docs/index.html)
[![License](https://img.shields.io/cocoapods/l/SwiftyMocky.svg?style=flat)](http://cocoapods.org/pods/SwiftyMocky)

![Mint compatible](https://img.shields.io/badge/🌱%20Mint-compatible-brightgreen.svg)
![SPM compatible](https://img.shields.io/badge/SPM-compatible-orange.svg?style=flat&logo=swift)

# ![logo][logo]

Join our community on Slack! -> [invitation link here][link-slack]

Check out [guides][link-guides-contents], or full [documentation][link-docs]

## Table of contents

1. [Overview](#overview)
1. [Installing SwiftyMocky CLI](#installation)
1. [Usage:](#usage)
1. [Authors](#authors)
1. [License](#license)

<a name="overview"></a>

## Overview

**SwiftyMocky** is Lightweight, strongly typed framework for Mockito-like unit testing experience. As Swift doesn't support reflections well enough to allow building mocks in runtime, library depends on [Sourcery](https://github.com/krzysztofzablocki/Sourcery), that scans your source code and **generates Mocks Swift code for you!**

The idea of **SwiftyMocky** is to automatically mock Swift protocols. The main features are:

<a name="installation"></a>

## Installing SwiftyMocky CLI:

**[Mint 🌱](https://github.com/yonaskolb/Mint)**:

```bash
% brew install mint
% mint install MakeAWishFoundation/SwiftyMocky-CLI
```

**[Marathon 🏃](https://github.com/JohnSundell/Marathon)**:

```bash
% marathon install MakeAWishFoundation/SwiftyMocky-CLI
```
**Make**:

```bash
% make install
```

<a name="authors"></a>

## Authors

- Przemysław Wośko, wosko.przemyslaw@gmail.com
- Andrzej Michnia, amichnia@gmail.com

<a name="license"></a>

## License

SwiftyMocky is available under the MIT license. See the [LICENSE][link-license] file for more info.

<!-- Links -->

[link-slack]: https://join.slack.com/t/swiftymocky/shared_invite/enQtMjkwNDE1NjY5MjA3LTU2YjA4YTI3NDE5MzNkZTU4MzlmMzkwYmUzNzRiNWRlN2U5NmUyMDNkN2U0NGE2ZDkxYTU4NGViYzIxYjc5ZmE
[link-license]: ./LICENSE
[link-guides-installation]: ./guides/Setup%20in%20project.md
[link-guides-setup]: ./guides/Installation.md
[link-guides-contents]: ./guides/Contents.md
[link-guides-features]: ./guides/Supported%20features.md
[link-guides-examples]: ./guides/Examples.md
[link-changelog]: ./guides/CHANGELOG.md

[link-guides-cli]: ./guides/Command%20Line%20Interface.md
[link-guides-cli-migration]: ./guides/Command%20Line%20Interface.md#migration
[link-guides-cli-legacy]: ./guides/Legacy.md
[link-guides-cli-generate]: ./guides/Command%20Line%20Interface.md#generate
[link-guides-mockfile]: ./guides/Mockfile.md

<!-- Links based on tag -->

[link-docs]: https://cdn.rawgit.com/MakeAWishFoundation/SwiftyMocky/4.0.0/docs/index.html
[link-docs-features]: https://cdn.rawgit.com/MakeAWishFoundation/SwiftyMocky/4.0.0/docs/supported-features.html
[link-docs-installation]: https://cdn.rawgit.com/MakeAWishFoundation/SwiftyMocky/4.0.0/docs/installation.html
[link-docs-installation-carthage]: https://cdn.rawgit.com/MakeAWishFoundation/SwiftyMocky/4.0.0/docs/installation.html#installation-carthage
[link-docs-setup]: https://cdn.rawgit.com/MakeAWishFoundation/SwiftyMocky/4.0.0/docs/setup-in-project.html

<!-- Assets -->

[logo]: https://raw.githubusercontent.com/MakeAWishFoundation/SwiftyMocky/1.0.0/icon.png
[example-watcher]: https://raw.githubusercontent.com/MakeAWishFoundation/SwiftyMocky/1.0.0/guides/assets/example-watcher.gif "Example - generation"
[example-given]: https://raw.githubusercontent.com/MakeAWishFoundation/SwiftyMocky/1.0.0/guides/assets/example-given.gif "Example - given"
[example-verify]: https://raw.githubusercontent.com/MakeAWishFoundation/SwiftyMocky/1.0.0/guides/assets/example-verify.gif "Example - verify"
