class SwitcherAT091 < Formula
  desc "Providing the binary executable for the 'switch' script"
  homepage "https://github.com/danielfoehrKn/kubeswitch"
  url "https://github.com/danielfoehrKn/kubeswitch.git",
    tag:      "0.9.1",
    revision: "9f82b5f75bbc51615d97d006df86f1b9939123fd"
  license "Apache-2.0"
  head "https://github.com/danielfoehrKn/kubeswitch.git", branch: "master"

  depends_on "bash" => :build
  depends_on "coreutils" => :build
  depends_on "go" => :build

  def install
    rm_rf ".brew_home"
    ldflags = %W[
      -w
      -X github.com/danielfoehrkn/kubeswitch/cmd/switcher.version=#{version}
      -X github.com/danielfoehrkn/kubeswitch/cmd/switcher.buildDate=#{time.iso8601}
    ]

    ENV.prepend_path "PATH", Formula["coreutils"].opt_libexec/"gnubin" # needs GNU date
    system "go", "build", *std_go_args(output: bin/"switcher", ldflags:), "./cmd/main.go"

    generate_completions_from_executable(bin/"switcher", "completion", base_name: "switcher")
  end

  def caveats
    <<~EOS
      To setup shell integration, add this to your shell configuration:
      # bash
      source <(switcher init bash)
      # zsh
      source <(switcher init zsh)
      # fish
      switcher init fish | source
    EOS
  end

  test do
    system "#{bin}/switcher", "-h"
  end
end
