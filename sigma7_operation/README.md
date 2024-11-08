# Franka Teleoperation Project

## Sigma7 Operation

1. super user

    ```
        sudo su
    ```

2. 添加库路径到 LD_LIBRARY_PATH

    ```
        export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/carlmoore/xiangzhang_ws/franka_ws/franka_tele_ws/src/sigma7_operation/lib
    ```


3. Run 
    ```
        ros2 run sigma7_operation sigma_main
    ```