class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.149"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.149.tar.gz"
      sha256 "27146d9f0d15e43ef36cde031d2a64d45927b87ba678c1c563efc96f86f04b6c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.149.tar.gz"
      sha256 "4caba4f3cec609e2bd920ab98e6474ec080ed08332abc7a160cc4144bef2e279"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
