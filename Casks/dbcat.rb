cask "dbcat" do
  arch arm: "arm64", intel: "x86_64"

  version "0.8.8"
  sha256 arm:   "b813d38c4e4fa253bcc0e6dced0d36c6426f1b6f2b3e5443ae091486d95eb775",
         intel: "efa14b413c8d7221404021a575b2d70d3fbfc832f1cbba485b5ccd32e4bec894"

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
