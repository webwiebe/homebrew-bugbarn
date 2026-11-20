class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.391"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.391.tar.gz"
      sha256 "5a3b214c47990138a78d89215122d357682366ed64b6198856d348b16145ca51"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.391.tar.gz"
      sha256 "99df1bc3e5a334023923a029379c12fcd3b5f8ee9a069e6ffbb94992aa7f202b"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
