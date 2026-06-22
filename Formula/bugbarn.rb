class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.93"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.93.tar.gz"
      sha256 "fa42922a464c0e286f37857fd1326f781025e8a754d1d98af80eef3ad594218d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.93.tar.gz"
      sha256 "86a988c262028731ea8984d2c62ed3222e3329ad926a2adefbd6b7b90bf784a3"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
