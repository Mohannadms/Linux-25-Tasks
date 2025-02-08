mkdir git_started
cd git_started
mkdir .git
mkdir .git/{objects,refs/heads} -p
touch .git/HEAD
echo "ref: refs/heads/master" > HEAD
echo "hi" > hello.txt
git hash-object hello.txt -w
git update-index --add --cacheinfo 100644 45b983be36b73c0788dc9cbcb76cbb80fc7bb057 hello.txt
git write-tree
git commit-tree 7a2871192d49caaff5451df37b27afc373d8298b -m "greatest commit ever"
echo "1e23b35e1ec3492f9442c79c4084dfe490f1fda5" > .git/refs/heads/master
mkdir .git/refs/tags
echo "1e23b35e1ec3492f9442c79c4084dfe490f1fda5" > .git/refs/tags/V1
