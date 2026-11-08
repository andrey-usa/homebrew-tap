class Bitti < Formula
  desc "Plain-text web tests that run on real Chrome through navigera: one native binary, no Node."
  homepage "https://github.com/andrey-usa/bitti"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/bitti/releases/download/v0.1.0/bitti-x86_64-apple-darwin.tar.gz"
      sha256 "8520bf40da64d756587243a22d893f432bfe5d4e10c0d44f09fe5b6a5e1f59a5"
    end
    on_arm do
      url "https://github.com/andrey-usa/bitti/releases/download/v0.1.0/bitti-aarch64-apple-darwin.tar.gz"
      sha256 "0d7f9d8409059894a8e5dcff181971c9fdb91fe351bd8d5795c38dc6d365be6f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/bitti/releases/download/v0.1.0/bitti-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3e71a2fa53b69205faf6522bd1a15688b91d5b61d406ac88dd6de50786624a17"
    end
    on_arm do
      url "https://github.com/andrey-usa/bitti/releases/download/v0.1.0/bitti-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2ee3dc75ba6957b9203aaabd83f96307af2715ab4cdb3cf200eac4aa19591a6d"
    end
  end

  def install
    bin.install "bitti"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bitti --version")
  end
end
