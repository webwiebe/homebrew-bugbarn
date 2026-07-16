class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.148"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.148.tar.gz"
      sha256 "337bf84d4296d348449e129c83d23150b7c14fbe019197d4d16e9d12ee9fdec0"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.148.tar.gz"
      sha256 "f1f2d08430367ce4420b490a3d64b5723c5edd003991cb5e34fb3d7e4fbc266d"
    end
  end

  def install
    bin.install "bb"
  end
end
