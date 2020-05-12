// ROS 头文件
#include <ros/ros.h>
// 自定义msg产生的头文件
#include <beginner_tutorials/Mpoint.h>

int main(int argc, char **argv)
{
    ros::init(argc, argv, "mytak");
    ros::NodeHandle nh;

    // 自定义的消息
    beginner_tutorials::Mpoint msg;
    msg.x = 1.0;
    msg.y = 1.0;

    // 创建一个 publisher
    ros::Publisher pub = nh.advertise<beginner_tutorials::Mpoint>("num", 1);

    // 定义发布的频率
    ros::Rate loop_rate(1.0);

    // 循环发送
    while (ros::ok())
    {
        // 更新数据
        msg.x = 1.03 * msg.x;
        msg.y = 1.01 * msg.y;
        ROS_INFO("Talker: GPS: x = %f, y = %f ",  msg.x ,msg.y);
        //以1Hz的频率发布msg
        pub.publish(msg);
        //根据前面定义的频率, sleep 1s
        loop_rate.sleep();//根据前面的定义的loop_rate,设置1s的暂停
    }
    

}

