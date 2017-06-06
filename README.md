# iQuery
English</br>
A jQuery Implementation on iOS platform; </br>
</br>
中文</br>
iQuery 是一个jQuery 在 iOS 平台上的实现;</br>
- 1.基本功能
    - 1.1 选择器
        - 1.1.1 基本选择器
            - iQuery 给 NSObject 扩展了一个 id 属性 
            - 使用 $("#id") 来访问对应 id 的对象
            - 由于 OC 本身的限制，使用的时候只能用一个指针指向我们的对象

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
