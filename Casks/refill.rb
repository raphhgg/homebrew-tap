cask "refill" do
  version "0.2.0-beta.1"
  sha256 "REPLACE_WITH_SHA256_OF_Refill-v0.2.0-beta.1.zip"

  url "https://github.com/raphhgg/Refill/releases/download/v#{version}/Refill-v#{version}.zip"
  name "Refill"
  desc "Menu bar app for Codex, Claude Code and Cursor usage limits and account switching"
  homepage "https://github.com/raphhgg/Refill"

  depends_on macos: ">= :sonoma"

  app "Refill.app"

  zap trash: [
    "~/Library/Application Support/Refill",
    "~/Library/Caches/Refill",
    "~/Library/Preferences/com.raphhgg.refill.plist",
  ]
end
