class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.3.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.3.13.tar.gz"
      sha256 "defd32c01569047463f9498b404a256a87fceb2dc347d99b14c6dd60ab799e5c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.3.13.tar.gz"
      sha256 "f5d6b7d9feeeb5ebb52b6ced0fa7d2567b841a5a10c4b18d24823c689ca9ec2a"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
