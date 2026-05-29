class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.40"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.40.tar.gz"
      sha256 "ad0f0fd1ed4dbdb7906110c5cec768b8e48421c5507de67d7dc40da7e063ca93"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.40.tar.gz"
      sha256 "6a2fba8d8f358321d2bf06fd1daa632489d7f85194dde3baf9743307d90d1875"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
