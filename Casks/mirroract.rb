cask "mirroract" do
  version "0.2.2"
  sha256 "8ad6af12b194088ee86a9bcaa9f2ec45c6d65add0c4ec2da11095d612806293e"

  url "https://github.com/sopitz/MirrorAct/releases/download/v#{version}/MirrorAct-#{version}.zip"
  name "MirrorAct"
  desc "Mirror, frame and record an iPhone, iPad or Android phone"
  homepage "https://mirroract.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "MirrorAct.app"

  zap trash: [
    "~/Library/Application Support/MirrorAct",
    "~/Library/Logs/MirrorAct-Agent.log",
    "~/Library/Logs/MirrorAct.log",
    "~/Library/Preferences/io.github.sopitz.MirrorAct.plist",
    "~/Library/Saved Application State/io.github.sopitz.MirrorAct.savedState",
  ]
end
