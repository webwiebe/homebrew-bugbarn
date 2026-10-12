class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.217"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.217.tar.gz"
      sha256 "43d2b42724d9b3f3dd114a016a440bb26533edb951fb713b828f67d3d89cd7bb"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.217.tar.gz"
      sha256 "1bb8c27645e00cbaf570baa997ef803849083a41d9f5929d390bcf9b4ae4f478"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
