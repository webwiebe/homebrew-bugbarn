class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.250"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.250.tar.gz"
      sha256 "c7dcdadaebcfea5e5247a2c922b07ca50860fd3e43abd3e6ea750ec88b70c1b9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.250.tar.gz"
      sha256 "3a85f3d45003c75cf7f290485b4d49be5eb5a2fe1958e7c2d35eb9db26ea1327"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
