cask "katabro" do
  version "0.3.0"
  sha256 "22e95a8000f5660df19f43a3a17cd44dd9c6067c23627f8429dcc4cd9f2e7dcd"

  url "https://github.com/zbiljic/Katabro/releases/download/v#{version}/Katabro-#{version}-arm64.zip"
  name "Katabro"
  desc "Choose which browser opens each web link"
  homepage "https://github.com/zbiljic/Katabro"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Katabro.app"
  binary "#{appdir}/Katabro.app/Contents/Helpers/katabro"

  uninstall quit: "com.zbiljic.katabro"

  caveats <<~EOS
    This build is ad hoc signed and is not notarized by Apple.
    If macOS blocks the first launch, try opening Katabro once, then use
    System Settings > Privacy & Security > Open Anyway if you trust this release.
    iCloud sync is unavailable in this build; local settings and folder sync work.
  EOS
end
