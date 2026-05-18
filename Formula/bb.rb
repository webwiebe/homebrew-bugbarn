class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.2.tar.gz"
      sha256 "aaa8616b866a202751029387034f707661d0955b95139874089aa713f75d8a2a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.2.tar.gz"
      sha256 "554c2ea5245a1c0039ffbee8c70b5cdd16a44fb36983a4c6b70b3b886f02be8c"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
