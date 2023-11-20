awslogin
awscompleter

aws cloudwatch describe-alarms | jq '.MetricAlarms[] | select(.StateValue != "OK") | .AlarmName'

aws ec2 describe-instances help
aws ec2 describe-instances --filters Name=iam-instance-profile.arn,Values=<arn>
aws ec2 help
aws ec2 start-instances --instance-ids <instance_ids>
aws ec2 stop-instances --instance-ids <instance_id>

aws help --no-cli-pager

aws lambda get-function --function-name <function_name>

aws s3 cp fromFile s3://toBucket/toFileName
aws s3 cp s3://fromBucket/fromFolder/ toFolder/ --recursive
aws s3 ls
aws s3 ls --recursive s3://bucket_name
aws s3 ls s3://bucket-name/
aws s3 ls s3://bucket-name/folder/
aws s3 sync myfolder s3://mybucket/myfolder --exclude *.tmp

aws sso login

aws secretsmanager get-secret-value --secret-id <secret_name> --no-cli-pager
aws secretsmanager list-secrets --filters Key=name,Values=<secret_name>

aws cloudtrail # eventnames => https://www.gorillastack.com/blog/real-time-events/cloudtrail-event-names/

aws ec2 describe-instances help
aws ec2 describe-instances --filters Name=iam-instance-profile.arn,Values=<arn>
aws ec2 describe-security-groups --filters "Name=group-name,Values=<sg_name>" --query="SecurityGroups[*].GroupId" | jq ".[0]"  | sed "s/\"//g"
aws ec2 help
aws ec2 start-instances --instance-ids <instance_ids>
aws ec2 stop-instances --instance-ids <instance_id>

aws eks describe-cluster --name <name of cluster>
aws eks list-clusters
aws eks update-kubeconfig --name <name of cluster> # this will download the kubeconfig of the cluster to your config file if kubectx is activated

aws events list-rules --name-prefix <event-bridge-prefix>

aws help --no-cli-pager

aws iam attach-role-policy --role-name <role-name> --policy-arn arn:aws:iam::aws:policy/ElasticLoadBalancingReadOnly
aws iam get-role --role-name <role-name>
aws iam list-attached-role-policies --role-name <role-name>
aws iam list-groups # list all the user groups in your I my account
aws iam get-group # list the users in a specific user group
aws iam list-groups-for-user # To list all the user groups that a user is in

aws lambda get-function --function-name <function_name>

aws rds describe-db-instances --query "DBInstances[*].[DBInstanceIdentifier,DbiResourceId]"

aws s3 cp fromFile s3://toBucket/toFileName
aws s3 cp s3://fromBucket/fromFolder/ toFolder/ --recursive
aws s3 ls
aws s3 ls --recursive s3://bucket_name
aws s3 ls s3://bucket-name/
aws s3 ls s3://bucket-name/folder/
aws s3 sync myfolder s3://mybucket/myfolder --exclude *.tmp

aws sts get-caller-identity

aws secretsmanager get-secret-value --secret-id <secret_name> --no-cli-pager
aws secretsmanager list-secrets --filters Key=name,Values=<secret_name>

aws --query # Examples: https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-filter.html
aws ec2 describe-volumes --query 'Volumes[*]'
aws ec2 describe-volumes --query 'Volumes[0]'
aws ec2 describe-volumes --query 'Volumes[0:2:1]'
aws ec2 describe-volumes --query 'Volumes[::2]'
aws ec2 describe-volumes --query 'Volumes[::-2]'
aws ec2 describe-volumes --query 'Volumes[*].Attachments'
aws ec2 describe-volumes --query 'Volumes[*].Attachments[*].State'

brew install aws-iam-authenticator
brew install awscli
brew install jq
brew install kubernetes-cli
brew install kubent
brew install k9s
brew install stern
brew install --cask alt-tab
brew update
brew upgrade package_name
brew update
brew upgrade package_name

cat cert_file | openssl x509 -noout -enddate | sed -e 's/notAfter=//' # Certificate Age
cat > ~/Desktop/tempfiles/temp.json <<EOF\
{\
  "hello": "world"\
}\
EOF
cd ~/Code/
cdgitroot
chmod 0600 ~/.ssh/priv_key # User only read-4 and write-2
curl wttr.in/Milton+KY
curl wttr.in/Santa+Clara
curl wttr.in/Xian
curl --socks5-hostname 127.0.0.1:<port_connected_on> <full_url_like_on_proxy_machine>
curl --netrc-file <netrc-cred-file> <URL>

date -u +"%Y-%m-%d--%T-%Z" # YYYY-MM-DD--HH-MM-SS-UTC
date +"%s" # epoch time
TZ=Asia/Shanghai date # https://en.wikipedia.org/wiki/List_of_tz_database_time_zones
dirname -- "${BASH_SOURCE[0]}" # In a script, list folder of script being run, different from pwd
dirname -- ~/.aws/config # List folder path for a specific file

echo "$?"
export EXPORT_COMMAND_EX=$(date)

for TEMP_FILE in "$HOME"/*;do; echo $TEMP_FILE; done

find ~/Code/techology-notes -iname '*md'
find ~/Code/techology-notes/ -name README.md

git cherry-pick <git_commit_id>
git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD)
git reset --hard HEAD
gitpushall "commit_message" # git add . && git commit -m commit_message && git push
gitpush
gitpull
gitaddall
gitstatus
git stash
git stash pop
gitcommit
gitd
gitdiff
gitcheckpush "new_branch_name" # git checkout -b branch_name and git push to origin
gitcp git_commit_id # git cherry-pick git_commit_id

helm status master
helm upgrade --help
helm ls -a # current state of cluster
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx # name of the repo is typically the final part of the path
helm search repo ingress-nginx/ingress-nginx --versions # list all versions of https://kubernetes.github.io/ingress-nginx (logged as ingress-nginx in "repo add" command) for chart "ingress-nginx"
helm search repo ingress-nginx/ingress-nginx # list most recent chart "ingress-nginx" for url https://kubernetes.github.io/ingress-nginx which the url was logged as ingress-nginx in "repo add" command

jq '.[1]' # after input
jq '.[0][2]' # after input
jq '.[0].[0:3]' # after input
jq '.apiVersion'
jq "['AttachedPolicies']"
jq ".SecretList[*]"
jq '.[] | select(.id==6912)'
jq -r ".SecretList[] | .Name=='secret_list_name'" # "-r" removes quotations
jq '.MetricAlarms[] | select(.StateValue == "ALARM") | select(.AlarmName | contains "lambda")'
jq '.MetricAlarms[] | select(.StateValue != "OK") | .AlarmName' # comes after `aws cloudwatch describe-alarms`
jq ".[0]"  | sed "s/\"//g" # comes after `aws ec2 describe-security-groups --filters "Name=group-name,Values=<sg_name>" --query="SecurityGroups[*].GroupId"`

kctl get deployments -A -o custom-columns=NAME:.metadata.name --no-headers
kctl config view # view config file, will list all context options
kctl config get-contexts
kctl config use-context <fill_in_from_kctx_options> # same as kctx <fill_in>
kctl describe pod <pod-name> --namespace <namespace>
kctl describe ns # list details for all namespaces
kctl cluster-info
kctl edit deployment.apps <pod-prefix> --namespace <namespace>
kctl edit deployment <pod-prefix> --namespace <namespace>
kctl get all
kctl get cm -n <namespace>
kctl get cm <vuln-feed-config> -n argento-system -o yaml
kctl get deployment <pod_prefix> -o yaml
kctl get events
kctl get jobs -A
kctl get cronjobs -A
kctl get pods -A
kctl get pods --namespace <namespace>
kctl get nodes -A
kctl get ns
kctl get svc -n <hmm>
kctl delete pod <pod_name> -n <namespace>
kctl logs -p <pod-name> --namespace <namespace>
kctl logs -f <some_pod_from "kctl get all">

kctx -c # only the current context
kctx <environment to switch to>
kctx

kctl describe pod <pod-name> --namespace <namespace>
kctl edit deployment <pod-prefix> --namespace <namespace>
kctl get all
kctl get cm -n <namespace>
kctl get cm <vuln-feed-config> -n argento-system -o yaml
kctl get pods -A
kctl get pods --namespace <namespace>
kctl get nodes -A
kctl logs -p <pod-name> --namespace <namespace>
kctl logs -f <some_pod_from "kctl get all">

kubent # list all k8s deprecations

kns <namespace>

mkdir -p ~/level_1/level_2/
mkdir -p ~/level_1/level_2/

rm -rf .terraform;tg init && say "init complete";tg apply

pip freeze
pip install --upgrade pip
pip install --upgrade pip
pip install -r requirements.txt
pip install <library>
pip install awscli
printenv
printenv PWD
ps -ax
ps -ef
python3 --version
python3 -m venv ~/.venv/py3venv1  # Create virtual environment
pip freeze
pip install --upgrade pip
pip install --upgrade pip
pip install -r requirements.txt
pip install <library>
pip install awscli
printenv
printenv PWD
ps -ax
ps -ef
python3 --version
python3 -m venv ~/.venv/py3venv1  # Create virtual environment

printf "${On_Blue}${White}Background and text color changed for eye-catching terminal output${Color_Off}\n"

rmtf # Delete Terraform State file - .terraform/terraform.tfstate
rmtfa # Delete all hidden terraform files - .terraform*

say "Failed again, try again soon."
say "Good News, Everyone!"
sed -i '' "s/~ resource/  resource/g" input.txt # Update file in place
set -e # next non-zero exit code will exit terminal
set +e # terminal will continue on non-zero exit code
set -x # print all executed commands - helps with debugging
set +x # do not print all executed commands - less code output when running shell scripts
set -u # error message will display when using unconfigured variable
set +u # do not display error message with unconfigured variable
set -v # original command will be output before running
set +v # do not re-state command just specified
source ~/.venv/py3venv1/bin/activate  # Activate virtual environment
ssh -i <private_key_file> <user>@<ec2-instance-id> # have to have ssm setup
ssh -i <private_key_file> <user>@<ec2-instance-id> -D <random_port> # curl --socks5-hostname 127.0.0.1:<previous_port> <full_url_like_on_proxy_machine,including_port>
ssh <ip> "sudo -- sh -c 'date; whoami; pwd; cd ~; pwd'" # run ssh commands as `sudo`
ssh -p <port> <user>@<ip_address>
ssh <user>@<ip> "echo 'command_string';pwd;ls"
ssh-add -k ~/.ssh/id_rsa
ssh-add -l
say "Failed again, try again soon."
say "Good News, Everyone!"
set -e # next non-zero exit code will exit terminal
source ~/.venv/py3venv1/bin/activate  # Activate virtual environment
ssh -i <private_key_file> <user>@<ec2-instance-id> # have to have ssm setup
ssh -i <private_key_file> <user>@<ec2-instance-id> -D <random_port> # curl --socks5-hostname 127.0.0.1:<previous_port> <full_url_like_on_proxy_machine,including_port>
ssh <ip> "sudo -- sh -c 'date; whoami; pwd; cd ~; pwd'" # run ssh commands as `sudo`
ssh -p <port> <user>@<ip_address>
ssh <user>@<ip> "echo 'command_string';pwd;ls"
ssh-add -k ~/.ssh/id_rsa
ssh-add -l

terraform init
terraform plan
terraform plan --destroy
terraform plan -no-color > ~/terraform_plan-$(date -u +"%Y-%m-%d--%T-%Z").txt
terraform apply
terraform apply -parallelism=1 # Changes default parallel tasks from 10 to 1
terraform destroy
terraform import <hmm> <something>
terraform state list # list all modules
terraform state mv <from> <to>
terraform state rm module.<fill_in_more_from_state_list> # remove a module, typically with prevent_destroy to skip over during tf destory
terraform state replace-provider registry.terraform.io/-/aws  registry.terraform.io/hashicorp/aws # Used commonly during terraform upgrades when providers update do not go through correctly

tga
tgimport
tgplan
tga1 # single threaded terragrunt apply
tg init
tg plan
tg plan --destroy
tg plan -no-color > ~/terraform_plan-$(date -u +"%Y-%m-%d--%T-%Z").txt
tg apply
tg apply -parallelism=1 # Changes default parallel tasks from 10 to 1
tg destroy
tg import <hmm> <something>
tg import "module.stuff.aws_cloudwatch_event_target.lambda_target" "<target_rule_name>/$(aws events list-targets-by-rule --rule <target_rule_name> | jq -r '.Targets[0].Id')" # Import aws_cloudwatch_event_target
tg state list # list all modules
tg state mv <from> <to>
tg state rm module.<fill_in_more_from_state_list> # remove a module, typically with prevent_destroy to skip over during tf destory

test -d ${HOME}/Desktop # does the Desktop folder exist
test -f ${HOME}/.zshrc # does the specific file exist

vagrant global-status
vagrant halt
vagrant plugin install plugin_name
vagrant scp local_file_or_dir vm_id:path_on_vm
vagrant ssh
vagrant ssh -c "pwd"
vagrant up

which python3
whoami

xargs -I {} echo {} # utilize this after a pipeline to take the multi-line output of previous command to run multiple commands here
xargs -I {} sh -c "echo {};ls -al {}" # utilize this command after a multi-line input. Running with sh allows for multiple commands to be run
