cask "nuticast" do
  version :latest
  sha256 :no_check

  url "https://www.nuticast.com/download/Nuticast.dmg"
  name "Nuticast"
  desc "Xcode wireless debugging for an iPhone on a different Wi-Fi, over a mesh VPN"
  homepage "https://www.nuticast.com/"

  depends_on macos: :ventura

  app "Nuticast.app"
  binary "#{appdir}/Nuticast.app/Contents/Helpers/nuticast"

  zap trash: [
    "~/Library/Application Support/Nuticast",
    "~/Library/Preferences/com.local.taha.Nuticast.cli.plist",
    "~/Library/Preferences/com.local.taha.Nuticast.plist",
  ]
end
