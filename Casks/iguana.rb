cask "iguana" do
  version "0.2.0"
  sha256 "1058c14f2badc129ef2a0125c12acbee52817d87fe153f10c1877b5e7083d244"

  url "https://github.com/Chandram-Dutta/iguana/releases/download/v#{version}/Iguana-#{version}.zip"
  name "Iguana"
  desc "Keyboard-driven tiling window manager"
  homepage "https://iguana.onlychan.xyz/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Iguana.app"
  # The app's binary is also the command line tool.
  binary "#{appdir}/Iguana.app/Contents/MacOS/iguana"

  uninstall quit: "xyz.onlychan.iguana"

  zap trash: [
    "~/.config/iguana",
    "~/Library/Application Support/Iguana",
    "~/Library/Logs/Iguana.log",
    "~/Library/Preferences/xyz.onlychan.iguana.plist",
  ]
end
