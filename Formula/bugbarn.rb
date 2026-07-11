class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.133"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.133.tar.gz"
      sha256 "1cd9075e66377b9ae4f9fc7e1a3120a8c77cfece4f0238313bfc65472f538069"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.133.tar.gz"
      sha256 "49150ff4710b622359685ca4274941d8dc3d8ade75a37986a582903453bf375e"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
