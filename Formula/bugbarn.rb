class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.76"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.76.tar.gz"
      sha256 "2bd67e4e05f39fa112ab3e6403312d001ba6a0ed08527be235e54ab0682112c5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.76.tar.gz"
      sha256 "a76e3676f90baad95ae2bd25ca3093b95e191cb297351766f4d9ec485ec59131"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
