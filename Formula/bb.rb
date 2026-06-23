class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.95"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.95.tar.gz"
      sha256 "0556a22b002a3aa4f68bd1c830db098a038b28d9e713a908167faa71b56e219b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.95.tar.gz"
      sha256 "5180e18575d3d477973961d8408b5f3b4bf78cce96c4c6fe7e815916609a0e3b"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
