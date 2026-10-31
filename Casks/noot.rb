cask "noot" do
  version "1.8.2"
  sha256 "34f51b52afa6b53d2a05c48f1853a1dcf6485b1238a5cac00336c1708a16ae83"

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
