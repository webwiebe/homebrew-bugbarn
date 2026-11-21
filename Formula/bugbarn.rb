class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.393"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.393.tar.gz"
      sha256 "81f4b62db1971a8e963f7c332caa6ecaa83b40a3d004980744a7ac2b32bd8c80"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.393.tar.gz"
      sha256 "4daa31301cc0d35093fd75459f61ca45ab9e774423b9908312fdd0dfdf691a77"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
