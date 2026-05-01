class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.15.tar.gz"
      sha256 "0d629ec03f3ca70599589feb78027f61df738144c7ea78e6749fd845ade3347e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.15.tar.gz"
      sha256 "5840c43b0f21355be1b3b7f6e6955a232c958cd6211b2ae232a8925b817b24e7"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
