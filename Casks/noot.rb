cask "noot" do
  version "1.7.0"
  sha256 "3da7478864e51ca063c15d0a83e7422137568edd98419adcf548b86280ac83b5"

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
