class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.255"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.255.tar.gz"
      sha256 "94ce9414f5548f9eb59e953e49a68e2d501fb939166912336ecd144265e1cfe6"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.255.tar.gz"
      sha256 "7c40cb92bab8c8a9a1a3f3f3d07ad7a6f230b41eb9d6d196a285969195f94624"
    end
  end

  def install
    bin.install "bb"
  end
end
