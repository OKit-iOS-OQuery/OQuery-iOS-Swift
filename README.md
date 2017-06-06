# iQuery
English
A jQuery Implementation on iOS platform; 

中文
iQuery 是一个jQuery 在 iOS 平台上的实现;
1、基本功能
  a、选择器
    （1、基本选择器
  
现在已经实现基本选择器功能，调用方法类似 jquery:

    UITextField *textFieldA = [UITextField New];
    textFieldA.text = @"hello，iQuery！";
    
    // iQuery 给 NSObject 扩展了一个 id 属性
    textFieldA.id = @"PasswordTextField";
    // 现在就可用 iQuery 访问了,由于 OC 本身的限制，这里只能用一个指针指向我们的对象
    UITextField *textFieldB = $("#PasswordTextField");
    NSLog(@"%@",textFieldB.text);
    
