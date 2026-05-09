class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.105"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.105.tar.gz"
      sha256 "de563244de0d9525ec270986a74ba987937455dec1b68e3ffc1ed8d88a2b63d4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.105.tar.gz"
      sha256 "b761e9348f44a86fa398586ed1142ea209bde6301d85a9bf973f3fd645b17164"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
