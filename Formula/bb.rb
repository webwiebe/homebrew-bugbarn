class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.234.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.234.2.tar.gz"
      sha256 "a4980d75a49cfc110cb099c8a6cdd625ea2b90cd2bb6ab078a61b1dc8db59049"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.234.2.tar.gz"
      sha256 "10b0278c361e69642cc5dc22e124bc3e922763f14301714f7f5bb5b601af3c4b"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
