cask "noot" do
  version "1.5.0"
  sha256 "31c53adcf936788f87a4dd3a671e2d9e44889db377a9db7decf7db4f31bf916a"

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
