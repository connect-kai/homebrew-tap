cask "noot" do
  version "1.6.0"
  sha256 "7b8c586216620f162a831f5e8d9ca1b4b963512080ffac3ba7afd15643afaccc"

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
