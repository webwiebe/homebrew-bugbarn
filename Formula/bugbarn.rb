class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.130"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.130.tar.gz"
      sha256 "77103c5ad955b097baa286d43eeb72f62b5001c9d65bc21d1d138bdd82b7ba2c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.130.tar.gz"
      sha256 "df4c47fa9c65f9720b8c14dc5653539f506856da540bdb628757418e4a057339"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
