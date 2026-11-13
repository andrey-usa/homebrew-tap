class Bitti < Formula
  desc "Plain-text web tests that run on real Chrome through navigera: one native binary, no Node."
  homepage "https://andrey-usa.github.io/bitti/"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/bitti/releases/download/v0.3.1/bitti-x86_64-apple-darwin.tar.gz"
      sha256 "a69b7efdea32e8a2c3956ed3a0c3c6d00f77adbf73e73f33fdd15797a8d32cff"
    end
    on_arm do
      url "https://github.com/andrey-usa/bitti/releases/download/v0.3.1/bitti-aarch64-apple-darwin.tar.gz"
      sha256 "3c9d2a86efa4261fc477294058b8afeb210a907130d8419704b28c5c26bdc347"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/bitti/releases/download/v0.3.1/bitti-x86_64-unknown-linux-musl.tar.gz"
      sha256 "90cba09012074834b089998fa9c1d187ab972c538cbe862fd4cf57eb66c0bb66"
    end
    on_arm do
      url "https://github.com/andrey-usa/bitti/releases/download/v0.3.1/bitti-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f32fb2ce2fa54cd5949186f5d7f76985e735325c3b6dc9eea2fb13dc80606bce"
    end
  end

  def install
    bin.install "bitti"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bitti --version")
  end
end
