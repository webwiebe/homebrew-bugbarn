class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.209"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.209.tar.gz"
      sha256 "99de8fccde6c6a3d27d606b3d0c3016f5d033fa1a30f97c3f5a6bc8478501ae7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.209.tar.gz"
      sha256 "d8e8af97e3fa2ff8c0b0e0e32311e490c584c417baa3d008ef089bb0d92cd99b"
    end
  end

  def install
    bin.install "bb"
  end
end
