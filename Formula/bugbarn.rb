class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.64"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.64.tar.gz"
      sha256 "0776e93eaa8dba7a76833831853e812a63ea4876664967bf1fcccf6eb1edefd1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.64.tar.gz"
      sha256 "df43b7c9c2057a2199b7a008cdc643799b57b95d5b92b04c378b6008fc2ce2d4"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
