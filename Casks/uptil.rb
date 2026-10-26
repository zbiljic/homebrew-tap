cask "uptil" do
  version "0.2.0"
  sha256 "836d333d5507930516bcf1cbbc6b2068edc86ae0c1a9a7871bfc2c9f7d681ff8"

  url "https://github.com/zbiljic/uptil/releases/download/v#{version}/UpTil-#{version}-arm64.zip"
  name "UpTil"
  desc "Prevent idle sleep for a set time"
  homepage "https://github.com/zbiljic/uptil"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "UpTil.app"
  binary "#{appdir}/UpTil.app/Contents/Helpers/uptil"

  uninstall quit: "com.zbiljic.uptil"

  caveats <<~EOS
    This build is ad hoc signed and is not notarized by Apple.
    If macOS blocks the first launch, try opening UpTil once, then use
    System Settings > Privacy & Security > Open Anyway if you trust this release.
    The uptil helper controls the running app; start UpTil before using it.
  EOS
end
