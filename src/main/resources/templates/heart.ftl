<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Heart</title>

    <style type="text/css">
        .content {
            width: 900px; /*主体(跳动)-大小和位置*/
            height: 900px;
            margin: 0 auto;
            position: relative; /*以此为基准画心*/
            animation-name: dump; /*绑定*/
            animation-delay: 0ms; /*延迟几秒后开始*/
            animation-duration: 1s; /*完成的时间 */
            animation-timing-function: ease-in-out; /*完成的速度方式 */
            animation-iteration-count: infinite; /*播放的次数*/
        }

        .content .left, .content .right {
            position: absolute;
            width: 600px; /*2倍的半径*/
            height: 900px; /*3倍的半径*/
            border-radius: 300px 300px 0 0; /*心头的半径*/
            background: red;
            filter: drop-shadow(0 0 45px rgb(255, 20, 20)); /* 滤镜 + 阴影 */
        }

        @keyframes dump { /*此动画在规定的完成时间内各阶段的状态 */
            0% {
                transform: scale(0.8, 0.8); /*动画的形式-缩放动态(缩放的比例)*/
                opacity: 1; /* 透明度  */
            }
            50% {
                transform: scale(1, 1);
                opacity: 0.5;
            }
            100% {
                transform: scale(0.8, 0.8);
                opacity: 1;
            }
        }
    </style>
</head>
<body>
    <div class="content">
    <div class="left" style="transform: rotate(-45deg);"></div>
    <div class="right" style="transform: rotate(45deg);left: 212px;"></div>
</body>
</html>