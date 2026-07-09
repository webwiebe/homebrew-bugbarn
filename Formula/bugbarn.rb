class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.129"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.129.tar.gz"
      sha256 "6f4acbade1136238c8149c24f680ddcac9391d1cd9c1c923155af79193c3a6c4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.129.tar.gz"
      sha256 "a51f6bf6d4abe6a79f91cffe30b1f294f7db5beb6bbc93e06d9bfa746009ebfd"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
