class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.116"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.116.tar.gz"
      sha256 "45085bcec09e946da52f1fa03c75682f6cd93826ab0b5169e6a6bc64ec7b6c30"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.116.tar.gz"
      sha256 "23bbe7fd3083701249afdeea9bafe27026138a5d87748e354e4c5c9e10287dc6"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
