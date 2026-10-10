class Gruppera < Formula
  desc "Fast station-temperature aggregation (One Billion Row Challenge format): mmap, SWAR parsing, byte-identical output to the Java reference."
  homepage "https://github.com/andrey-usa/gruppera"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/gruppera/releases/download/v0.4.0/gruppera-x86_64-apple-darwin.tar.gz"
      sha256 "5d39abf536f73d8a3cd54b19797e3b2cf10ab7104ee69583f15435fa9479088e"
    end
    on_arm do
      url "https://github.com/andrey-usa/gruppera/releases/download/v0.4.0/gruppera-aarch64-apple-darwin.tar.gz"
      sha256 "f84d7edc67a6bb5726c065975f5717d0fb96fe60b78ad5f55387a2cd2f20d5ab"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/gruppera/releases/download/v0.4.0/gruppera-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e7b7679d36035c53b6d2840a07c10e05dac9f36eae1ed7e7097d7580df3d16a6"
    end
    on_arm do
      url "https://github.com/andrey-usa/gruppera/releases/download/v0.4.0/gruppera-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8edaedcaa9ddd5044491e5c714bce301f11e60d231705294732e27525c4850c0"
    end
  end

  def install
    bin.install "gruppera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gruppera --version")
  end
end
