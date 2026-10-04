class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.190"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.190.tar.gz"
      sha256 "0f2ae5db15e2ed4215f3f09bd98a1a3a7dc707de7a7ceda5a7c9c3067e29db77"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.190.tar.gz"
      sha256 "9de63ffa63c4caf401b34ec2154dc98778b5c2d80900e07b7d59442bb1da5ca0"
    end
  end

  def install
    bin.install "bb"
  end
end
