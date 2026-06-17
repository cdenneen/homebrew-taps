cask "pdk@3.4.0.1" do
  version "3.4.0.1"
  sha256 "560df5c9d885cc6d5860d1a61d9b5e9cff9d852f6ab669dee610b7d77a30b062"

  # Puppet dropped Puppet 7 support in PDK 3.5.0; keep 3.4.x installable.
  # Puppet only publishes a macOS ARM installer for this version under osx13.
  url "https://downloads.puppet.com/mac/puppet-tools/13/arm64/pdk-#{version}-1.osx13.dmg"
  name "Puppet Development Kit"
  homepage "https://github.com/puppetlabs/pdk"

  depends_on arch: :arm64
  depends_on macos: :ventura

  pkg "pdk-#{version}-1-installer.pkg"

  uninstall pkgutil: "com.puppetlabs.pdk"

  pdk_bins = "/opt/puppetlabs/pdk/bin"
  caveats <<~EOS
    PDK binaries are installed in #{pdk_bins}, which is sourced by an /etc/paths.d entry.
    #{pdk_bins} may not be included in your current $PATH but should be included in new shells.
  EOS
end
