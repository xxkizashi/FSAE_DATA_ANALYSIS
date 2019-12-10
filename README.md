# FSAE_DATA_ANALYSIS
FSAEマシンから取得したデータを解析した．

## Description
- 2019/12/08
    - 測定条件
        - Arduinoで9軸センサ(MPU-9255)の値を読み取った．
        - スポーツランドSUGOマルチショートコース × 4周(計測2周)
        - x軸正方向：進行方向に向かって右，y軸正方向：進行方向，Z軸正方向：鉛直の反対方向
        - サンプリング時間  
        ~0.5[s]←割込みを使ってないため
    - データ処理  
    3点移動平均  
    移動平均を取っているので，最大旋回Gとかを求めるときは生データを見てください．

## Requirement
MATLAB

## Installation
    $ git clone https://github.com/xxkizashi/FSAE_DATA_ANALYSIS.git