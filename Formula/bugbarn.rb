class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.239"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.239.tar.gz"
      sha256 "7493c033cf79be510601aff17fe99fd8319fc46bb35cce0819bb1a537dd379f2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.239.tar.gz"
      sha256 "d832b4a2ae8770ea56fc53deb2b2d06509d8196dfb9446f35563b810c4de8bd4"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
