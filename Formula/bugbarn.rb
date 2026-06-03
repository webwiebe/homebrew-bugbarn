class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.54"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.54.tar.gz"
      sha256 "0d897a794ffc62b1dacab41fbb090510de33f9fdc14974b1f52a12a66570065d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.54.tar.gz"
      sha256 "5d704e0a9857f60763ad6cf22d2d6dd34a0942928355bf6808518948c2f3b5b4"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
