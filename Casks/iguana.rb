cask "iguana" do
  version "0.4.0"
  sha256 "92a252b16e10803c929c377134166e673b559c2f39ec2a7612c99a21753e76fe"

  url "https://github.com/Chandram-Dutta/iguana/releases/download/v#{version}/Iguana-#{version}.zip"
  name "Iguana"
  desc "Keyboard-driven tiling window manager"
  homepage "https://iguana.onlychan.xyz/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Iguana installs its own updates, so a plain `brew upgrade` leaves it to the app.
  auto_updates true
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
