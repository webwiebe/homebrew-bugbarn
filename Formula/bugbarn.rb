class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.48"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.48.tar.gz"
      sha256 "0a1686c9b10c72540473d6b9594842f5317325920a5e22069f7057329232fbcf"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.48.tar.gz"
      sha256 "e14f5c931c69f0a487d4164dd5331b975eaa6a2c716baaad9aa58ba9b1fc4b99"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
