# 学习随笔

## 编译的步骤

    cd ~/tutorial_ws
    catkin_make
    source ~/tutorial_ws/devel/setup.bash   #刷新环境 方法一
    rospack profile #刷新环境 方法二

## 二进制包和源码包的区别

## 软件包的组成

* package.xml

* CMakeLists.txt

## 工作空间目录结构

* src/:源代码包

* build/:缓存信息和中间文件

* devel/:生成的目标文件，环境变量

## package 的创建

    catkin_create_pkg test_pkg roscpp rospy std_msgs

## 安装 src/ 路径下所有软件包的依赖

    rosdep install --from-paths src --ignore-src --rosdistro=melodic -y

## Metapackage 的定义

多个功能包的集合

## 节点 node

某一个可执行文件

## 启动一个节点

    rosrun pkg_name node_name

## rosnode命令

    rosnode list: 列出当前运行的 node 信息
    rosnode info node_name: 显示 node 的详细信息
    rosnode kill node_name: 结束某个 node

## launch 文件

## Topic（异步通信方式）

功能：用来传输实时性、周期性的消息。

方式：点对点

初始化过程：

* publisher 节点和 subscriber 节点 到节点管理器进行注册

* publisher 发布 topic

* subscriber 订阅 topic

* 建立起 sub-pub 通信

总结三点：

* 发送时调用 publish() 方法，发送完成立即返回，不用等待反馈

* subscriber 通过回调函数的方式处理消息

* topic 可以同时有多个subscribers,也可以同时有多个publishers

### rostopic 的相关命令

    rostopic list: 列出当前所有的 topic
    rostopic info topic_name: 显示 topic 的属性信息
    rostopic echo topic_name: 显示某个 topic 的内容
    rostopic pub topic_name ...: 向某个 topic 发送内容

## Message

定义： topic 内容的数据类型

### rosmsg 的相关命令

    rosmsg list: 列出系统上所有的 msg
    rosmsg show msg_name: 显示某个 msg 的内容

## 常见 message

    Header.msg : 定义数据的参考时间和参考坐标    
    uint32 seq : 数据
    time stamp : 数据时间戳
    string frame_id : 数据的参考坐标系

    Quaternion.msg : 空间中旋转的四元数
    float64 x
    float64 y
    float64 z
    float64 w

    Point.msg : 空间中点的位置
    float64 x
    float64 y
    float64 z

    Pose.msg : 三位空间中的姿态信息，包括位置和指向信息
    Point position : 空间中的点
    Quaternion orientation : 空间中旋转的四元数

    PoseStamped.msg : 有时空基准的位姿
    Header header
    Pose pose

    Twist.msg : 物体运动的线速度和角速度
    Vector3 linear
    Vector3 angular

## Service

适用的场合：临时而非周期性的节点

特点：通信是双向的，不仅可以发送消息，同时还会有反馈。

通信过程：请求方（clinet）发送请求，要等待（service）处理，反馈回一个 reply.

### rosservice 的操作命令

    rosservice list: 显示服务列表
    rosservice info: 打印服务信息
    rosservice call: 使用所提供的参数调用服务
    rosservice args: 打印服务参数

## Src文件

描述 service数据类型， 包括请求和响应两部分。

格式：

* 第一行为请求的格式
* *------*
* 第三行为应答的格式

### rossrv 的操作命令

    rossrv show: 显示服务的描述
    rossrv list: 列出所有服务

### 需要修改部分文件

* package.xml
* CmakeList.txt

### package

    <build_depend>** message_generation **</build_depend>
    <run_depend>** message_runtime **</run_depend>

### CmakeList.txt

    find_package(...roscpp rospy std_msgs ** message_generation **)
    catkin_package(
    ...
    CATJIN_DEPENDS ** message_runtime ** ...
    ...)

    add_message_file(
    FILES
    ** DetectHuman.srv **
    ** HumanPose.msg **
    ** JointPos.msg **)

    ** generate_messages(DEPENDENCIES std_msgs) **

## Parameter server

作用： 节点存储参数的地方、用于配置参数，全局共享参数

### rosparam 的操作命令

    rosparam set param_key param_value: 设置参数
    rosparam get param_key: 显示参数
    rosparam load file_name: 从文件加载参数
    rosparam dump file_name: 保存参数到文件
    rosparam delete: 删除参数
    rosparam list: 列出参数名称

## rqt 命令

    rqt_graph: 显示通信架构
    rqt_plot: 绘制曲线
    rqt_console: 查看日志

## 第六单元

ROSCPP

## 节点初始化、关闭以及 NodeHandle

节点的基本操作

### 节点的初始化的一般步骤

    #include<ros/ros.h>
    int main(int argc, char** argv)
    {
        ros::init(argc, argv, "your_node_name"); 
        ros::NodeHandle nh;
        //....节点功能
        //....
        ros::spin();//用于触发topic、service的响应队列
        return 0;
    }

### NodeHandle 常用成员函数

    //创建话题的publisher 
    ros::Publisher advertise(const string &topic, uint32_t queue_size, bool latch=false); 
    //第一个参数为发布话题的名称
    //第二个是消息队列的最大长度，如果发布的消息超过这个长度而没有被接收，那么就的消息就会出队。通常设为一个较小的数即可。
    //第三个参数是是否锁存。某些话题并不是会以某个频率发布，比如/map这个topic，只有在初次订阅或者地图更新这两种情况下，/map才会发布消息。这里就用到了锁存。

    //创建话题的subscriber
    ros::Subscriber subscribe(const string &topic, uint32_t queue_size, void(*)(M));
    //第一个参数是订阅话题的名称
    //第二个参数是订阅队列的长度，如果受到的消息都没来得及处理，那么新消息入队，就消息就会出队
    //第三个参数是回调函数指针，指向回调函数来处理接收到的消息

    //创建服务的server，提供服务
    ros::ServiceServer advertiseService(const string &service, bool(*srv_func)(Mreq &, Mres &)); 
    //第一个参数是service名称
    //第二个参数是服务函数的指针，指向服务函数。指向的函数应该有两个参数，分别接受请求和响应。

    //创建服务的client
    ros::ServiceClient serviceClient(const string &service_name, bool persistent=false); 
    //第一个函数式service名称
    //第二个参数用于设置服务的连接是否持续，如果为true，client将会保持与远程主机的连接，这样后续的请求会快一些。通常我们设为flase

    //查询某个参数的值
    bool getParam(const string &key, std::string &s); 
    bool getParam (const std::string &key, double &d) const；
    bool getParam (const std::string &key, int &i) const；
    //从参数服务器上获取key对应的值，已重载了多个类型

    //给参数赋值
    void setParam (const std::string &key, const std::string &s) const；
    void setParam (const std::string &key, const char *s) const;
    void setParam (const std::string &key, int i) const;
    //给key对应的val赋值，重载了多个类型的val

### 坐标轴的说明（webots）

    - 红色： x 轴
    - 绿色： y 轴
    - 蓝色： z 轴
