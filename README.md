
## コンテナ作成

```
docker build -t env_opencv_image .
docker-compose up -d
docker exec -it env_opencv_container /bin/bash
```

## 画像処理

サンプルコードは workspace/main.py にあります。
実行時に入力画像のパスを引数としてセットします。
実行後は処理された画像がoutput.pngとして出力されます。

```
cd workspace
python3 main.py --src sample.jpg
```

雑に環境構築しているので、cv2.imshow() が使えません。
理由としては、guiのパッケージをインストールしていないのとこのコンテナ内をデスクトップで見るツールを入れていない、
の2つあります。