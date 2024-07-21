import { AbilityConstant, UIAbility, Want } from '@kit.AbilityKit';
import { hilog } from '@kit.PerformanceAnalysisKit';
import { window } from '@kit.ArkUI';
import { preferences } from '@kit.ArkData';
import { util } from '@kit.ArkTS';
import { BusinessError } from '@kit.BasicServicesKit';

//1.定义Preferences变量
let dataPreferences: preferences.Preferences | null = null;

export default class EntryAbility extends UIAbility {

  onCreate(want: Want, launchParam: AbilityConstant.LaunchParam): void {
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onCreate');
  }

  onDestroy(): void {
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onDestroy');
  }

  onWindowStageCreate(windowStage: window.WindowStage): void {
    // Main window is created, set main page for this ability
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onWindowStageCreate');

    windowStage.loadContent('pages/Index', (err) => {
      if (err.code) {
        hilog.error(0x0000, 'testTag', 'Failed to load the content. Cause: %{public}s', JSON.stringify(err) ?? '');
        return;
      }
      hilog.info(0x0000, 'testTag', 'Succeeded in loading the content.');
    });

    //2.初始化preferences
    let options: preferences.Options = { name: 'myStore' };
    dataPreferences = preferences.getPreferencesSync(this.context, options);

    //3.读取数据
    let val = dataPreferences.getSync('startup', 'default');
    console.info("first read The 'startup' value is " + val);
    // 当获取的值为带有特殊字符的字符串时，需要将获取到的Uint8Array转换为字符串
    let uInt8Array2 : preferences.ValueType = dataPreferences.getSync('uInt8', new Uint8Array(0));
    let textDecoder = util.TextDecoder.create('utf-8');
    val = textDecoder.decodeWithStream(uInt8Array2 as Uint8Array);
    console.info("first read The 'uInt8' value is " + val);

    //4.写入数据
    if (dataPreferences.hasSync('startup')) {
      console.info("The key 'startup' is contained.");
      console.info("The key 'startup' does not contain.");
      // 此处以此键值对存在时写入数据为例
      dataPreferences.putSync('startup', 'auto_data');
      // 当字符串有特殊字符时，需要将字符串转为Uint8Array类型再存储
      //let uInt8Array1 = new util.TextEncoder().encodeInto("~！@#￥%……&*（）——+？");
      let uInt8Array1 = new util.TextEncoder().encodeInto("uInt8_test");
      dataPreferences.putSync('uInt8', uInt8Array1);
      console.info("write data to Preferences.");
    } else {
      console.info("The key 'startup' does not contain.");
      // 此处以此键值对不存在时写入数据为例
      dataPreferences.putSync('startup', 'auto_data');
      // 当字符串有特殊字符时，需要将字符串转为Uint8Array类型再存储
      //let uInt8Array1 = new util.TextEncoder().encodeInto("~！@#￥%……&*（）——+？");
      let uInt8Array1 = new util.TextEncoder().encodeInto("uInt8_test");
      dataPreferences.putSync('uInt8', uInt8Array1);
      console.info("write data to Preferences.");
    }

    //5.数据持久化
    dataPreferences.flush((err: BusinessError) => {
      if (err) {
        console.error(`Failed to flush. Code:${err.code}, message:${err.message}`);
        return;
      }
      console.info('Succeeded in flushing.');


      //2.初始化preferences
      let options: preferences.Options = { name: 'myStore' };
      dataPreferences = preferences.getPreferencesSync(this.context, options);

      //6.读取数据
      val = dataPreferences.getSync('startup', 'default');
      console.info("second read The 'startup' value is " + val);
      // 当获取的值为带有特殊字符的字符串时，需要将获取到的Uint8Array转换为字符串
      uInt8Array2 = dataPreferences.getSync('uInt8', new Uint8Array(0));
      textDecoder = util.TextDecoder.create('utf-8');
      val = textDecoder.decodeWithStream(uInt8Array2 as Uint8Array);
      console.info("second read The 'uInt8' value is " + val);

    })

    //7.订阅数据变更
    let observer = (key: string) => {
      console.info('observer The key ' + key + ' changed.');
    }
    dataPreferences.on('change', observer);

    // 数据产生变更，由'auto'变为'manual_demo'
    dataPreferences.put('startup', 'manual_test', (err: BusinessError) => {
      if (err) {
        console.error(`Failed to put the value of 'startup'. Code:${err.code},message:${err.message}`);
        return;
      }
      console.info("Succeeded in putting the value of 'startup'.");
      if (dataPreferences !== null) {
        dataPreferences.flush((err: BusinessError) => {
          if (err) {
            console.error(`Failed to flush. Code:${err.code}, message:${err.message}`);
            return;
          }
          console.info('Succeeded in flushing.');
        })
      }
    })



  }

  onWindowStageDestroy(): void {
    // Main window is destroyed, release UI related resources
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onWindowStageDestroy');
  }

  onForeground(): void {
    // Ability has brought to foreground
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onForeground');
  }

  onBackground(): void {
    // Ability has back to background
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onBackground');
  }
}
