class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.234"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.234.tar.gz"
      sha256 "380a5be738a3bb3602133ee006b90ad0b65ccd2b434a35b1cd1d289394cba430"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.234.tar.gz"
      sha256 "99ca6b20342e5b340cfb3482e24a0a3b22b878a0e8c481b72266506d1e0e4d91"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
