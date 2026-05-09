class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.100"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.100.tar.gz"
      sha256 "492c3219d17dbcac5265b8be182f01f531c93ec2e0cf4f2f8ebfc77573742254"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.100.tar.gz"
      sha256 "8c3653b70677fcc01f674e878b1ba0a69e055fa078c85343f0bed4d7117e8683"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
