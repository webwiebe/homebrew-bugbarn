class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.14.tar.gz"
      sha256 "1dc0f3cba75cd2bd2ed8f9645ef516154ff80e0ce67241a78badf29d82ec8154"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.14.tar.gz"
      sha256 "2bc49c0fe71678f8944bed6886102444643befc9528ce7e980b6f8585702bd69"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
