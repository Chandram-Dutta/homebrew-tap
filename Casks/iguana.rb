cask "iguana" do
  version "0.3.0"
  sha256 "24de433cc9cedcc9ae3b5703d2638e833a175b5b811f465b04be4d8b826ba4ce"

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
