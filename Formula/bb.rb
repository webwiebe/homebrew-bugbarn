class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.282"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.282.tar.gz"
      sha256 "43de3b7d7b9aefd8f5af820ddeeeb90812957053883307596e37a4a67c09dad9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.282.tar.gz"
      sha256 "fba8264ccc72b6c700592daf91260d44e6f14b46063a6c0a9602d2c414c3614f"
    end
  end

  def install
    bin.install "bb"
  end
end
