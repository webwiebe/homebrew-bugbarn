class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.65"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.65.tar.gz"
      sha256 "b48d70fcdad2244ccc9bca57748016f83e90cedaeaaa26922606dccd763059e2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.65.tar.gz"
      sha256 "0209825b3bf06eabad0f317dc858e0d63f5b71efa823a174e6fbb878015dcb62"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
