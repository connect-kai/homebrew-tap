cask "noot" do
  version "1.2.0"
  sha256 "d0d8b1d255f8e9229efff0fc84c74dfae7f7c749f04f703169584bdf650bda1e"

  url "https://github.com/connect-kai/noot/releases/download/v#{version}/Noot-#{version}.zip"
  name "Noot"
  desc "Floating markdown scratchpad for macOS, Raycast Notes style"
  homepage "https://github.com/connect-kai/noot"

  app "Noot.app"

  caveats <<~EOS
    Noot is ad-hoc signed (not notarized). Install with --no-quarantine,
    or right-click -> Open on first launch.

    Grant Accessibility (for the double-shift toggle) and Documents access
    on first run. Notes live in ~/Documents/Noot as plain .md files.
  EOS
end
