class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.154"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.154.tar.gz"
      sha256 "c18919e14bcbed867c1c7b69fa876ee4dc3cc817f613d8bf83568f6098b8035b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.154.tar.gz"
      sha256 "b6224e6530d84613752a53036d039b2c1edf53be5dd82b8f69c6cc7f111c2272"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
