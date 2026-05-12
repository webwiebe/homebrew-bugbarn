class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.116"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.116.tar.gz"
      sha256 "d645c1ec63e61b854ac86379c0b16125adb00ef48c40fb9b13b6dc0197e53b73"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.116.tar.gz"
      sha256 "4e0561c852a137fb9e6f9dae3c5e8a941390926ef4d479cce11d13f735323bcb"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
