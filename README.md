# iQuery
English</br>
A jQuery Implementation on iOS platform; </br>

1. basic functions
    1. selector
        1. Config id
            1. use id property to store your own id
        1. Select object
            1. use $("#id") to select your object
        1. point to your object for using 
            1. Because of the implementation of Xcode, you should make a pointer pointing to your object for using; 

            
中文</br>
iQuery 是一个jQuery 在 iOS 平台上的实现;</br>
1. basic functions 基本功能
    1. selector 选择器
        1. Config id 配置对象 id
            1. use id property to mark your object 使用 id 属性来标记你的对象
        1. Select object
            1. use $("#id") to select your object 使用$("#id")，来访问对应id 的对象
        1. point to your object for using 
            1. Because of the implementation of Xcode, you should make a pointer pointing to your object for using; 由于 OC 本身的限制，使用的时候只能用一个指针指向我们的对象


- 1.基本功能
    - 1.1 选择器
        - 1.1.1 基本选择器
            - 1.1.1.a iQuery 给 NSObject 扩展了一个 id 属性 </br>
            - 1.1.1.b 使用 $("#id") 来访问对应 id 的对象</br>
            - 1.1.1.c 由于 OC 本身的限制，使用的时候只能用一个指针指向我们的对象</br>

进度展示：
- 1.基本功能
    - 1.1 选择器
          现在已经实现基本选择器功能
</br>

```objective-C (type)

        UITextField *textFieldA = [UITextField New];
        textFieldA.text = @"hello，iQuery！";
        textFieldA.id = @"PasswordTextField";
        UITextField *textFieldB = $("#PasswordTextField");
        NSLog(@"%@",textFieldB.text);
       
```
