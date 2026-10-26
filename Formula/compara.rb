class Compara < Formula
  desc "Compare two tables (CSV, NDJSON, Parquet) on a composite key: counts, per-column statistics and a self-contained HTML report."
  homepage "https://github.com/andrey-usa/compara"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/compara/releases/download/v0.6.0/compara-x86_64-apple-darwin.tar.gz"
      sha256 "55cbca4a49a5572f2c3474469c4266a55c10ef0325eef26146a6130f22f3a54d"
    end
    on_arm do
      url "https://github.com/andrey-usa/compara/releases/download/v0.6.0/compara-aarch64-apple-darwin.tar.gz"
      sha256 "5ad1b24fe73998d6b1f6b58ef91dffd2c5238cba7df7c359d85ebe3ce5c1af20"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/compara/releases/download/v0.6.0/compara-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "16961fd53c1bb6701f604899f9c0ae5325762a7176056d433d892f8318c1ca37"
    end
    on_arm do
      url "https://github.com/andrey-usa/compara/releases/download/v0.6.0/compara-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9c3ff338315a93632793acf0926222396588ab82cc4939992297cb03718fc106"
    end
  end

  def install
    bin.install "compara"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/compara --version")
  end
end
