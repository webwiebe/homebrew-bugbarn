class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.258"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.258.tar.gz"
      sha256 "cae070d13d7553261982001351139cb4897999a2cd713b25b4fa739310e6190b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.258.tar.gz"
      sha256 "9e5309dd3ff9a77da22ea406cdec8fa5d6cc1b0313f89477ff74354a2cd2bf17"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
