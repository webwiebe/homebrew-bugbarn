class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.227"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.227.tar.gz"
      sha256 "7e7fc950dc06cf6224a73dcd7dd9df3d4ac2503787333b7a1dfd242c2f2c7213"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.227.tar.gz"
      sha256 "5ef2999e5f745732147c4f73d9896c68761f0f6affbaf07a261d5dfb4a1f962e"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
