class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.113"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.113.tar.gz"
      sha256 "392d2683a2532fe7ebf5e5f80de8bc97ee660f3a26ae7028e849db2d2adbf86a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.113.tar.gz"
      sha256 "6e2533b55b4a4c94aaf9cbd07cf5e4daf4c05aaa5dadcdfa1bbb897600330e29"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
