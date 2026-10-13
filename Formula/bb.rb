class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.240"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.240.tar.gz"
      sha256 "e9e2a580dc6735e1c52a3d86f38050f8352f3473d219c36af9f97acf558a3930"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.240.tar.gz"
      sha256 "9206db561ba1efb41f63d61741f1f2b5cdf499b2c9dddb199be3b8b98e6dfd5a"
    end
  end

  def install
    bin.install "bb"
  end
end
