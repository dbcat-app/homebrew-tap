cask "dbcat" do
  arch arm: "arm64", intel: "x86_64"

  version "0.10.0"
  sha256 arm:   "1c04ec0ae58719c50211bb5c688f3a17b1d01adf43c0fc9516aff9db7a605f51",
         intel: "c49d1784bdadaa78103a9ebd07d9e82b59006a1a1b251495a6469e0d344e1552"

  url "https://github.com/dbcat-app/dbcat/releases/download/v#{version}/DbCat-#{version}-#{arch}.dmg"
  name "DbCat"
  desc "Native database client"
  homepage "https://dbcat.forzens.com/"

  livecheck do
    url "https://dbcat-app.github.io/dbcat/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

  app "DbCat.app"

  zap trash: [
    "~/Library/Application Support/DbCat",
    "~/Library/Caches/com.forzen.dbcat",
    "~/Library/HTTPStorages/com.forzen.dbcat",
    "~/Library/Logs/DbCat",
    "~/Library/Preferences/com.forzen.dbcat.plist",
    "~/Library/Saved Application State/com.forzen.dbcat.savedState",
  ]
end
