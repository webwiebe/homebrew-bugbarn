class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.238"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.238.tar.gz"
      sha256 "c265fe96c18c5c6aaae4ad54c74bfb2af9a842789ab3e0d81705a669e6412626"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.238.tar.gz"
      sha256 "90edc32caf502b61ae89e62e79668dc3f3648506398aa4607a3ff33ccc38e4a2"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
