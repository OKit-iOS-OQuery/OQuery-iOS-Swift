# iQuery
English</br>
A jQuery Implementation on iOS platform; </br>
</br>
中文</br>
iQuery 是一个jQuery 在 iOS 平台上的实现;</br>
1、基本功能</br>
a、选择器</br>
(1、基本选择器</br>
(a、iQuery 给 NSObject 扩展了一个 id 属性</br>
(b、现在就可用 iQuery 访问了</br>
(c、由于 OC 本身的限制，这里只能用一个指针指向我们的对象</br>
现在已经实现基本选择器功能，调用方法类似 jquery:</br>
</br>
```objective-c (type)

        UITextField *textFieldA = [UITextField New];
        textFieldA.text = @"hello，iQuery！";
        textFieldA.id = @"PasswordTextField";
        UITextField *textFieldB = $("#PasswordTextField");
        NSLog(@"%@",textFieldB.text);
       
```
