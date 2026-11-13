class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.364"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.364.tar.gz"
      sha256 "20c925e222603ff5247b28420f9cfc28db0c2b6ec10a00ed944f5be2595a3649"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.364.tar.gz"
      sha256 "fe9bec2e8dec3fa7228f94214b01ca8247bf5a5ff4faa4b04cc2d491e93f348a"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
