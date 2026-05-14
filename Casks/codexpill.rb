cask "codexpill" do
  version "0.1.0-beta.1"
  sha256 "194e006b036b32ff478ef1d9626585d3132546eb434dda7ce049c39001f88cd0"

  url "https://github.com/raphhgg/CodexPill/releases/download/v#{version}/CodexPill-v#{version}.zip"
  name "CodexPill"
  desc "Native macOS menubar companion for Codex accounts, limits and remote hosts"
  homepage "https://github.com/raphhgg/CodexPill"

  depends_on macos: ">= :sonoma"

  app "CodexPill.app"

  zap trash: [
    "~/Library/Application Support/CodexPill",
    "~/Library/Preferences/com.raphhgg.codexpill.plist",
  ]
end
