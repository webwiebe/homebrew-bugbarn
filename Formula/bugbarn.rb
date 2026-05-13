class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.137"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.137.tar.gz"
      sha256 "8f7b66b8182f7aa22a1f83496833793f337f6364e84d337d79358e9f3e042c4d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.137.tar.gz"
      sha256 "7fe936e45908d0c6bfb0e6bc3edbedbaf6fa500941aa754ad089ed4f7683bdb5"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
