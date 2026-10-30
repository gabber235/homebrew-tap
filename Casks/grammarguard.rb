# Filled in by tool/release.sh and pushed to gabber235/homebrew-tap.
cask "grammarguard" do
  version "1.2.2"
  sha256 "e938befdc1c238fc9fba637eb75315890d7836207fdc94bf2e2e144795d22026"

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
