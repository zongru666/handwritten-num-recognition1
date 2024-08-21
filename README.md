# 基于MATLAB平台最小错误率贝叶斯分类决策的手写数字识别系统

```
实验平台：MATLAB R2014a
分类器：最小错误率的贝叶斯分类决策分类器
实验图片：0-9十个数字各有10张图片作为样本
测试图片：0-9各8个图片作为测试样本
步骤：1、提取样本图片信息
      2、样本图片二值化（将图片放缩为10*10像素的灰度图片）
      3、提取特征向量
      4、样本训练（由样本计算出每个特征的概率）
      5、提取测试图片信息
      6、测试图片二值化
      7、提取测试图片的特征向量为待测向量
      8、由最小错误率的贝叶斯决策公式计算出后验概率（实验中其实只是计算出类条件概率）
      9、观察并分析实验结果 
```

三、	实验结果：
经过测试，数字0的成功率为75%；数字1的成功率为100%；数字2的成功率为62.5%；数字3的成功率为50%；数字4的成功率为100%；数字5的成功率为75%；数字6的成功率为75%；数字7的成功率为75%；数字8的成功率为75%；数字9的成功率为87.5%
下图为部分实验结果截图：  

图一 测试图片为数字0  

 ![image](https://github.com/user-attachments/assets/fd2db0d7-8a62-424e-8010-dd54b053a0bb)  
图二 测试图片为数字8  
![image](https://github.com/user-attachments/assets/8ff38f12-b234-4be9-b616-c7588b1c1e41)


## 鼓励一下
_你的鼓励是这个项目继续更新的最大动力_  

![mm_reward_qrcode_1724116372006(1)](https://github.com/user-attachments/assets/ae10606c-2a42-4486-8e6d-7b7d056ca8f4)

## Star History  

[![Star History Chart](https://api.star-history.com/svg?repos=zongru666/hand-writing-num-recognition&type=Timeline)](https://star-history.com/#zongru666/hand-writing-num-recognition&Timeline)
