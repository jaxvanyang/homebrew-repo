class Dotbackup < Formula
  desc "Highly customizable dotfile backup utility."
  homepage "https://github.com/jaxvanyang/dotbackup.rs"
  url "https://github.com/jaxvanyang/dotbackup.rs/archive/refs/tags/v2.2.0.tar.gz"
  sha256 "ee0a5e562f3fa08495988bb53a8f8b9ce6d692140f7dae628c2eb4699ee320bb"
  license "MIT"

  depends_on "rust" => :build
  depends_on "scdoc" => :build
  depends_on "just" => :build

  def install
    system "cargo", "install", *std_cargo_args
    system "just", "doc"

    man1.install "docs/dotbackup.1", "docs/dotsetup.1"
    man5.install "docs/dotbackup.5"
  end

  test do
    (testpath/"dotbackup.yml").write <<~EOF
      backup_dir: ~/backup
      apps:
        vim:
          files: [~/.vimrc]
    EOF

    assert_equal "vim", shell_output("#{bin}/dotbackup --list").strip()
  end
end
