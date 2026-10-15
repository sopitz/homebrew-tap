cask "mirroract" do
  version "0.2.3"
  sha256 "6e736439d6ba1507facefa53e75dd96f89224d3535a89010b7fbb8694357692f"

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
