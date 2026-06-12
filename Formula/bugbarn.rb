class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.73"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.73.tar.gz"
      sha256 "4d0e4ef6d1db0b818c27d81795df794d123e0f497d37751fffc4e7b3b03f8f3c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.73.tar.gz"
      sha256 "3d2c4ff8d9af5ac1bec7a649fe7641ea79757b70ece3b8e1b3c4d2d840be4d5d"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
