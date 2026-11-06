class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.338"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.338.tar.gz"
      sha256 "de51e2125c142b0f5d2997fbe584651abb4f2eb9cabe50ca6118dff0e16aff11"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.338.tar.gz"
      sha256 "6fab57b29e7389bfb567a1e38a147cf51f3acb9b708ceb82b2ee8adf68f7b871"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
