class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.221"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.221.tar.gz"
      sha256 "ade8d2261658af9400e5acca42d994e8ee7d43aa2848f502b96855f7c3959495"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.221.tar.gz"
      sha256 "7835909f69b3800b1f6f41ea3cca66f3a57d0c3012f9e9fe2dde8152390768ab"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
