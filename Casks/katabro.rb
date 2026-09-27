cask "katabro" do
  version "0.2.3"
  sha256 "503a12efbd4b153e83c0baf7d1d7987eac1657b2a0b3d33afe2f12a6bfb07575"

  url "https://github.com/zbiljic/Katabro/releases/download/v#{version}/Katabro-#{version}-universal.zip"
  name "Katabro"
  desc "Choose which browser opens each web link"
  homepage "https://github.com/zbiljic/Katabro"

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
