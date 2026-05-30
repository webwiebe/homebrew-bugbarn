class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.44"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.44.tar.gz"
      sha256 "cdbff5854f38fb569c15ae03436c22bc39ff2557d46d674a9b6e866379c4f69f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.44.tar.gz"
      sha256 "8de3392efd5426111d8d0e13a7a51a863c370f6e8ad22a4def761188977add29"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
