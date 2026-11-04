cask "dbcat" do
  arch arm: "arm64", intel: "x86_64"

  version "0.8.5"
  sha256 arm:   "56090c755f6cc1675f9c516a13e5abe114110cec68050712b7985bc578d28987",
         intel: "2798720c7ccae10c034993bcb39a0ac46ea0fd8ea7a519e98dc8490d6d994a58"

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
