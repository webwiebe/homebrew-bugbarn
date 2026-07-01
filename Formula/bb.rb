class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.114"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.114.tar.gz"
      sha256 "981cf115f2f11d58ec02a3fc5aa50ea2e9a487eb320debd021e8f76d8ea1eab9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.114.tar.gz"
      sha256 "60653742348485a1a6e2597b9cc967ae5482e5b56d7f0317c64ef759a3d0e6a0"
    end
  end

  def install
    bin.install "bb"
  end
end
