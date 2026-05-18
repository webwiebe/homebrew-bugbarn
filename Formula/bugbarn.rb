class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.234.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.234.1.tar.gz"
      sha256 "a24551c25c9660ed6a39b9651119063ceced2dcc5aa649f82da6e95f5bbe3024"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.234.1.tar.gz"
      sha256 "80f0808f2ac1d396f301c288eb534aa7936ee777c4232f3133e3d5062561bd48"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
