class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.60"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.60.tar.gz"
      sha256 "aecb288e0dc7a57664cd319dca833b5e8d1f1355912d3505a62083f9ee9bc412"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.60.tar.gz"
      sha256 "2f4471e668c30ada7b31fbbebba549ee9834366ec1382fe2dabbfeb639ded711"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
