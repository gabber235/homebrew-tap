# Filled in by tool/release.sh and pushed to gabber235/homebrew-tap.
cask "grammarguard" do
  version "1.2.1"
  sha256 "98a9147c89c8739762f5d47e8aaeddb11ba9fa3fb6020819ff0bace3d179a6c5"

  url "https://github.com/gabber235/GrammarGuard/releases/download/v#{version}/GrammarGuard-macos.zip"
  name "GrammarGuard"
  desc "Rewrite selected text anywhere and review every change"
  homepage "https://github.com/gabber235/GrammarGuard"

  depends_on macos: ">= :monterey"

  app "GrammarGuard.app"

  zap trash: [
    "~/Library/Application Support/me.gabber235.grammarGuard",
    "~/Library/Caches/me.gabber235.grammarGuard",
    "~/Library/Preferences/me.gabber235.grammarGuard.plist",
  ]

  caveats <<~EOS
    GrammarGuard is signed with its own certificate, not notarized by Apple.
    The first time, open it from Applications, then allow it under
    System Settings > Privacy & Security ("Open Anyway").

    Paste back needs the Accessibility permission:
    System Settings > Privacy & Security > Accessibility.
  EOS
end
