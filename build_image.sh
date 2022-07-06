
here="$(cd "$(dirname "${0}")" && pwd)"

docker_domain=mobilite-verte
repo_path="${1:-${here}}"


echo "✅ react-backOffice-application buil"
docker build -t ${docker_domain}/backOffice:latest "${repo_path}/backOffice"

echo "✅ node-serverNode-application buil"
docker build -t ${docker_domain}/serverNode:latest "${repo_path}/serverNode"


