class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.3.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.3.8.tar.gz"
      sha256 "43a85e67ebb5db1cdb7ad63f4f75a27f738894e1ff055afd24836b7a9d86714c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.3.8.tar.gz"
      sha256 "808b22f7d35f6fee9f8eb1ae5340667739b65370ac1034681ed8d483ff8d6f16"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
