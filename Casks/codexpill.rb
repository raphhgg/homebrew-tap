cask "codexpill" do
  version "0.1.0-beta.1"
  sha256 "5530ad07f9db000de6545c8103fdd6af35db8526ffc285de201980629b42c294"

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
