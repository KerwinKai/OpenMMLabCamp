# 作业一：进阶作业
## author：Kerwin
```
dataset：cifar10
model：resnet50
epoch：10
accuracy_top-1: 90.0200
accuracy_top-5: 99.7000
log：slurm-283511.out
checkpoints：
链接：https://pan.baidu.com/s/1s42WpiF7pZmZmB52q5cBDg 提取码：ixi4

```
## 心得
- cifar10的数据集从opendatalab上下载非常快，没一分钟就下好了，但是数据结构没有imagenet好理解
- 一旦把权重文件或大文件向github上push，即使后面删掉了，在.git中依然存在，会导致之后的git操作无效且冗余，参考：`https://medium.com/analytics-vidhya/tutorial-removing-large-files-from-git-78dbf4cf83a` 将提交记录给删除
- gpus集群计算嘎嘎快嘎嘎好用！
- OSError: [Errno 122] Disk quota exceeded 注意磁盘配额，输出的权重路径记得保存在run路径下，不然会提示配额不足
- 数据集指向cifar-10.tar.gz的所在的文件夹路径
