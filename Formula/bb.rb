class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.320"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.320.tar.gz"
      sha256 "bb6aeed733996d1dc39e0c0ad2f29055a1810c05caca252296ba69ef52765216"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.320.tar.gz"
      sha256 "5f511a2ad59fdeeec905837f7b68592550147134d041e44f010f2465a840c6f7"
    end
  end

  def install
    bin.install "bb"
  end
end
