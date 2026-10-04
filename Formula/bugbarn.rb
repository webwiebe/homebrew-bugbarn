class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.197"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.197.tar.gz"
      sha256 "fc8134916f183b51e5a10023d8cc9086d77f95017930c732572e25f77d750c3d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.197.tar.gz"
      sha256 "3b4a8bd07f4dea76f3ab434655c81464d3b0a551a125926b564d981837a08ce1"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
