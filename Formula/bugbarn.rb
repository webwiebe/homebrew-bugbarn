class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.123"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.123.tar.gz"
      sha256 "79df0938b7c86a82c80d10aae7b55bab57857f9890f7d05548f1d9efafc66e5c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.123.tar.gz"
      sha256 "81d160cabdeb8185eb66a1abc13f3a8c0842de2e872672aac898a9612ef71eea"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
