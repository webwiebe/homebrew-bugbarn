class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.101"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.101.tar.gz"
      sha256 "3030f17939a908bebe05ee9f49dd1bb6f788b77ba212f6641975d84f4c4a9abd"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.101.tar.gz"
      sha256 "f92ecda7f70b2f82b1378a6d183a2f367bc684d5c1aa08a2b0176f19f1cb1bdf"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
