class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.100"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.100.tar.gz"
      sha256 "d6534fa52efe3856b92451f8f5efe97fdfd2a03ef7b191a1ce4ef1a034dffcb9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.100.tar.gz"
      sha256 "2235957897b0aef605a81989aaedacf91bafec66daf66f39bc46ec3ae88c1056"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
