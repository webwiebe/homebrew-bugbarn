class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.126"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.126.tar.gz"
      sha256 "078e13d43461db4570dc1ea840e508b1753045c4b26ec22d82c905fa656bd53c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.126.tar.gz"
      sha256 "7a5a077a5837dc187343bc3bbfb141f490fd54b6520d0931fc8a0c6c07963803"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
