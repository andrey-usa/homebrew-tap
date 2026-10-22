class Compara < Formula
  desc "Compare two tables (CSV, NDJSON, Parquet) on a composite key: counts, per-column statistics and a self-contained HTML report."
  homepage "https://github.com/andrey-usa/compara"
  version "0.5.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/compara/releases/download/v0.5.3/compara-x86_64-apple-darwin.tar.gz"
      sha256 "13253a2ca6ff9956c734d4d92c8e01c49532c7ce163696f0c1b9040757dcbba6"
    end
    on_arm do
      url "https://github.com/andrey-usa/compara/releases/download/v0.5.3/compara-aarch64-apple-darwin.tar.gz"
      sha256 "8a33e9478cf55444bdeedb96fb0526ed5ea67abb02fcff8a7a757329ef2c541c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/compara/releases/download/v0.5.3/compara-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "432abf83ce7beb8d75674d05db75f373e5225416775483a7840505e1eff6a429"
    end
    on_arm do
      url "https://github.com/andrey-usa/compara/releases/download/v0.5.3/compara-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "77a2a203ac5cea0fb3b63f55230e209c2d0fab34be33338a9b207f5097593d26"
    end
  end

  def install
    bin.install "compara"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/compara --version")
  end
end
