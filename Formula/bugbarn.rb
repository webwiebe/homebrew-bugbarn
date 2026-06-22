class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.89"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.89.tar.gz"
      sha256 "77d0c0e5bebaa2e86f424a4d02b9643fc2bd4431a3d79c3441e346f83963e4b0"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.89.tar.gz"
      sha256 "f67706f0bdb8b31701564b50029ed209937a64cd7be0fe657ddcc5199b873739"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
