# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- Initial release
- Focus-oriented color scheme inspired by Black Bag movie
- Transparent background support
- Full Treesitter support
- LSP diagnostics with light red accents
- Git signs integration
- Support for popular plugins:
  - Telescope
  - Snacks.nvim
  - blink.cmp / nvim-cmp
  - Lualine
  - Bufferline
  - And more

### Design Philosophy
- Orange highlights only for primary focus points (search, current position, active selections)
- Light red accents for secondary attention (diagnostics, git changes)
- Calm blue/cyan syntax for reduced visual noise
- Light blue/white-blue text on transparent black background
