class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.236"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.236.tar.gz"
      sha256 "6a2c47c38b7be00063fce9ef39761238ca1fc003e0dc45011880756b1b78e55b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.236.tar.gz"
      sha256 "cdefed562cfbdbec7251db47d9ca266629aa1afd84f3946ec3bf8ac6c5f05189"
    end
  end

  def install
    bin.install "bb"
  end
end
