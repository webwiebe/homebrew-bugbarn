class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.66"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.66.tar.gz"
      sha256 "45fe0ad8d725578081e1fe55ff5ea12ad7b45f2deebb28db48d727c76114fcf7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.66.tar.gz"
      sha256 "90271a3d613993597d36b1eafc17f5887f9ac7436e5a470381045799866594bd"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
