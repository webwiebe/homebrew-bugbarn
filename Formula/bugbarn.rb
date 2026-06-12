class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.71"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.71.tar.gz"
      sha256 "87eb5e6418f842639c1f7ee959b5ee0728dcb78c249b4f403906170b25cb3571"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.71.tar.gz"
      sha256 "68558012ee86f0e8594c436d9bc00a7913c57aa0e7040481b7f1f1ad26ea706a"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
