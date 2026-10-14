class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.251"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.251.tar.gz"
      sha256 "5452c12844cc4b64e471feb9ec47c488e7cca42ea326e9a3f1e663c0dd26c196"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.251.tar.gz"
      sha256 "72f71a77846c142e73c13a7420eb9c9f1758789ee42d139958c47a18412e8755"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
