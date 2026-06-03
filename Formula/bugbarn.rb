class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.55"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.55.tar.gz"
      sha256 "eaaaa1e23d646249891a6970491503b666e32ad8e4e9f1623b78f952ccb25595"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.55.tar.gz"
      sha256 "be3b6b967b0de0d3e4013fb31fcab7f1a0522d4e848a480791bce9e13e4a3429"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
