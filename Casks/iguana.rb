cask "iguana" do
  version "0.2.1"
  sha256 "e7bc95fc2e3fb86a0f2e90ba22ceb4ba8845f8da0e6772c93752d23b02c79b0f"

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
