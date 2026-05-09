class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.97"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.97.tar.gz"
      sha256 "37ef6148ca4bfbfbc9a6c06cc24fa366c0799e5532c1fd2b86431458f34a1641"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.97.tar.gz"
      sha256 "c5d4f3e7a82660718ead825e7a5a668d243142f86e94f7138bc8ffe5df748bae"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
