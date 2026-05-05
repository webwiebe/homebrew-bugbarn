class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.44"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.44.tar.gz"
      sha256 "8d9f27787ce257629de578ebc643c9894e14a538eb0f980e756d60f150f704c6"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.44.tar.gz"
      sha256 "90ff5415863bed673c62a9844632da3f1f97ad5579671dd6864fd709566d714f"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
