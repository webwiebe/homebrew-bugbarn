class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.4.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.4.8.tar.gz"
      sha256 "602bff481fb7c75e4c78b940f0b2e75482ea1f7553d00b7d749f3e2c889456cb"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.4.8.tar.gz"
      sha256 "6c4f4e851689d244a914e0bfb4cf6d0f67966c9d15807f9b9c123c11e4b82750"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
