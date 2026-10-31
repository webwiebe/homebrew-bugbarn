class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.313"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.313.tar.gz"
      sha256 "9417b82df37f1f77808c42b7980128f31730c5de0f5350ebc77757ea07c843ef"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.313.tar.gz"
      sha256 "93fcb39197afdbe5f1b39b6fda3a64f0dc9bcd6b384b5578726d6d9480d80f2c"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
