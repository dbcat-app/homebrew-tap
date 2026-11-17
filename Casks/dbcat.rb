cask "dbcat" do
  arch arm: "arm64", intel: "x86_64"

  version "0.8.9"
  sha256 arm:   "ec5d03f96439aa6ba2283a5a2cca5bef50ed65a155288fae41982a5b1775b0eb",
         intel: "a0ab56b369f3c355b4c7b9ea6b9882b26f7751ccdae40348b02e37f09e6b5833"

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
