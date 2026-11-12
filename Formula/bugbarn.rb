class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.360"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.360.tar.gz"
      sha256 "64a3966c6b1809f61a93cc28eb1cbc7c756987f9c49637a50aa2ae87e0e45ff4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.360.tar.gz"
      sha256 "0c4d420c5a24a2f969ef55a4bd7c3104de326fe2dc755ec925760bd128779643"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
