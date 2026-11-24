cask "iguana" do
  version "0.1.2"
  sha256 "142bfb12482e1728419f3259f24931677c69baf16fed4f26daa6cb04466e3cb2"

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
