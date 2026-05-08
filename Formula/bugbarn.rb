class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.91"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.91.tar.gz"
      sha256 "a1c148a8323aa77c23cfd66f0cbda7bc77b19a7ff0bb29d3e5218f6533c720e2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.91.tar.gz"
      sha256 "4f68ea3a8957b870d95dac7563dd594d7ce7b23978c1b9335e4b66d6d90a5ab8"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
