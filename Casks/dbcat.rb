cask "dbcat" do
  arch arm: "arm64", intel: "x86_64"

  version "0.8.6"
  sha256 arm:   "5bb8ec5f392fb5790b71e8a545348d22cdbbd9c71ad34465b8b8b3adde3eff2f",
         intel: "c4610265da0f8c07c7610f78bf3f9bab34adbcaafd8b3a1db3ef9f948ad5b972"

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
