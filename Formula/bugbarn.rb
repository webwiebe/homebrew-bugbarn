class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.107"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.107.tar.gz"
      sha256 "dac466d4b3477074b309e128918566cfd7c02e96bd4186c6b95f92fb61b7a7d9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.107.tar.gz"
      sha256 "a7608b782834c2298745c34ac438551bb99fbad32e4da40a3bfebbb25c67b100"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
