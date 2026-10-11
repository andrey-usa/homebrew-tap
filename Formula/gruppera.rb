class Gruppera < Formula
  desc "Fast station-temperature aggregation (One Billion Row Challenge format): mmap, SWAR parsing, byte-identical output to the Java reference."
  homepage "https://github.com/andrey-usa/gruppera"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/gruppera/releases/download/v0.4.0/gruppera-x86_64-apple-darwin.tar.gz"
      sha256 "5daf01c67e612aaf31f8e981d9720d02bff0f094d32667e33c3eef493ded692e"
    end
    on_arm do
      url "https://github.com/andrey-usa/gruppera/releases/download/v0.4.0/gruppera-aarch64-apple-darwin.tar.gz"
      sha256 "0bcd60b657cc8816a3d54d0d1e0557d5c326a2d62b10cca4d45c254d9d8c2926"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/gruppera/releases/download/v0.4.0/gruppera-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7c418f40af839937514fc21f854efc03c5e5d167f0fcb7bb9ad527863e02c377"
    end
    on_arm do
      url "https://github.com/andrey-usa/gruppera/releases/download/v0.4.0/gruppera-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5c137bf87e4e594fc50eb5ea05f8f304af4834f8a7da192c57325002cf821316"
    end
  end

  def install
    bin.install "gruppera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gruppera --version")
  end
end
