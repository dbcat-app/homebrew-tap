cask "dbcat" do
  arch arm: "arm64", intel: "x86_64"

  version "0.8.7"
  sha256 arm:   "30fc5cfdf63bae0607004308408be7fb7d16726f194a9594da02a3648c72eff3",
         intel: "758db62696e8cd736b574bdc54b2a8fa28af2aecf9f5fb78a1dde2392107c126"

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
