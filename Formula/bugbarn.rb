class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.30"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.30.tar.gz"
      sha256 "fb43eccf0847e76deedd5a2634bd63a8f36c5f186b0fa373482872ce1d544350"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.30.tar.gz"
      sha256 "3b4f7236a9c85ec99fc3b5ee370ab9806ce46756b06a77bee09680bf3640cad0"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
