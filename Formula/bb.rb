class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.346"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.346.tar.gz"
      sha256 "23a1e9c39b5af3f247620c1a4886a42aa570ab8412835d2a5c845b3e2172fb9d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.346.tar.gz"
      sha256 "cce3cbe851f0397f3e3620eb6387c1cf40df72954c965df181dee600da5e79ca"
    end
  end

  def install
    bin.install "bb"
  end
end
