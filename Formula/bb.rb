class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.3.tar.gz"
      sha256 "b2fc947f322f08a18a3e6064df18b50da3fa8825bf9a714a0fe95cbca2554e46"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.3.tar.gz"
      sha256 "9bf7bf614a80004f9786b943b0609d659bcf1867e58c49b8af3c9a1e5d8a0c98"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
