cask "noot" do
  version "1.5.1"
  sha256 "ccecd696441dc02fcf4a11f00331a22b41a0bd7aa49ef8191443900b56ea65cd"

  url "https://github.com/connect-kai/noot/releases/download/v#{version}/Noot-#{version}.zip"
  name "Noot"
  desc "Floating markdown scratchpad for macOS, Raycast Notes style"
  homepage "https://github.com/connect-kai/noot"

  app "Noot.app"

  caveats <<~EOS
    Noot is ad-hoc signed (not notarized). Clear quarantine before first launch:
      xattr -dr com.apple.quarantine /Applications/Noot.app
    (or right-click -> Open).

    Grant Accessibility (for the double-command toggle)
    on first run. Notes live in ~/Noot as plain .md files.
  EOS
end
