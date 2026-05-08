class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.78"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.78.tar.gz"
      sha256 "10cbe3e1404101566fe706fbef8fa68e3549d5b8f5c4148f15f114e848c26e48"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.78.tar.gz"
      sha256 "884632591ac75cf8acd459f705eda6e17980de571d3e62b008c5b6908d3c29b1"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
