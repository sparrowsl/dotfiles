
#!/usr/bin/env bash

echo "🚀 Setting up Caddy + Litestream environment..."

echo "📦 Updating packages..."
apt-get update -y
apt-get upgrade -y

# --- REMOVE OLD WEB SERVERS ---
echo "🧹 Removing Nginx, Apache, and other conflicting web servers..."
systemctl stop nginx apache2 || true
systemctl disable nginx apache2 || true
apt-get remove -y nginx nginx-common apache2 apache2-bin apache2-utils || true
apt-get purge -y nginx nginx-common apache2 || true
apt-get autoremove -y

# --- INSTALL CADDY ---
echo "🌍 Installing Caddy from official GitHub release..."
CADDY_VERSION=$(curl -s https://api.github.com/repos/caddyserver/caddy/releases/latest | grep tag_name | cut -d '"' -f4)
wget -q "https://github.com/caddyserver/caddy/releases/download/${CADDY_VERSION}/caddy_${CADDY_VERSION#v}_linux_amd64.tar.gz" -O /tmp/caddy.tar.gz
tar -xzf /tmp/caddy.tar.gz -C /tmp
mv /tmp/caddy /usr/bin/caddy
chmod +x /usr/bin/caddy

# Setup Caddy directories
mkdir -p /etc/caddy /var/lib/caddy /var/log/caddy
touch /etc/caddy/Caddyfile

# Enable and start Caddy
systemctl daemon-reload
systemctl enable caddy
systemctl restart caddy

echo "✅ Caddy installed successfully!"

# --- INSTALL LITESTREAM ---
echo "💾 Installing Litestream..."
LITESTREAM_VERSION=$(curl -s https://api.github.com/repos/benbjohnson/litestream/releases/latest | grep tag_name | cut -d '"' -f4)
wget -q "https://github.com/benbjohnson/litestream/releases/download/${LITESTREAM_VERSION}/litestream-${LITESTREAM_VERSION#v}-linux-amd64.tar.gz" -O /tmp/litestream.tar.gz
tar -xzf /tmp/litestream.tar.gz -C /tmp
mv /tmp/litestream /usr/local/bin/litestream
chmod +x /usr/local/bin/litestream

echo "✅ Litestream installed successfully!"

# --- CLEANUP ---
rm -rf /tmp/caddy.tar.gz /tmp/litestream.tar.gz

# --- SUMMARY ---
echo ""
echo "🎉 Installation complete!"
echo "Caddy binary: $(which caddy)"
echo "Litestream binary: $(which litestream)"
echo ""
echo "🧾 Default Caddyfile: /etc/caddy/Caddyfile"
echo "To validate config: sudo caddy validate --config /etc/caddy/Caddyfile"
echo ""
echo "You can now add a site block like:"
echo ""
echo "example.com {"
echo "    reverse_proxy localhost:8000"
echo "}"
echo ""
echo "Then run: sudo systemctl reload caddy"
