# 作业一：基础作业
## author：Kerwin
```
dataset：flowers-5
model：resnet18
epoch：10
accuracy_top-1: 94.4056
log：slurm-283313.out
checkpoints：latest.pth
链接：https://pan.baidu.com/s/1RhTOLtkaH57Tq73DjO-Sog 提取码：wop0
```
## 心得
- `split_data.py`文件要进行修改，需要加上`img_path = img_path[img_path.find('/', img_path.find('/')+1)+1:]`来处理相对位置，因为训练配置文件中`data_prefix`所指向的即是输入数据的路径，而使用的相对路径需减少两层/
- 基于预训练模型的继续训练能减轻不少的算力消耗，并提高准确度
- 学习了git的基本操作