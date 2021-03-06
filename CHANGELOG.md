## [Unreleased]
*no unreleased changes*

## 5.6.0 / 2019-08-29
### Added
* Add `Integer#working_days_since`. (#11)

## 5.5.1 / 2019-05-15
### Fixed
* Support Ruby 2.6, Rails 6.0. Minimum Ruby/Rails versions are now 2.5/5.2
* Warn when WorkingDays lookup is getting stale
* Improved date parsing in String#to_date

## 5.5.0 / 2018-11-16
### Added
* Add `ThreatScanner` to wrap ClamAV for virus detection (#10)

### Fixed
* Added missing bank holidays for 2017-2019 (#9)

## 5.4.2 / 2018-08-06
### Fixed
* Fix Daterange equality comparisons

## 5.4.1 / 2018-07-09
### Fixed
* ensure Range#exclude? is available

## 5.4.0 / 2018-05-09
### Added
* Support Rails 5.2
