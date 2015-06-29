# Change Log for elk_logstash
All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased][unreleased]
### Changed

## [0.0.3] - 2015-06-29
### Changed
- Fix namespace issue

## [0.0.2] - 2015-06-29
### Added
- Install runit
- replace the `logstash::server` recipe with more configurable LWRP calls
- Restart Logstash when certificates change
- ChefSpec

### Changed

### Removed
- The entire configure recipe as it does not belong in this cookbook

## 0.0.1 - 2015-05-12
### Added
- Initial Release

[unreleased]: https://github.com/evertrue/elk_logstash-cookbook/compare/v0.0.2...HEAD
[0.0.2]: https://github.com/evertrue/elk_logstash-cookbook/compare/v0.0.1...v0.0.2
