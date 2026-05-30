class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.47"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.47.tar.gz"
      sha256 "274124d90691500e0e64ce5c2458167c73078ff5b5cb42dc63d1b15fac0f8d34"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.47.tar.gz"
      sha256 "bb4c3e8e93f928db5feffaecef02bca372e412e66914cce329b496757b86b8b1"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
