class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.66"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.66.tar.gz"
      sha256 "5965b8c088856e17fedbd1911e7ed021973532233c3674f86f32e5269e4f4169"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.66.tar.gz"
      sha256 "2f1a37e4e1f7a1b10d1dbf33b0bf82541bb5c95537e9709d2a024802f1e6004b"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
